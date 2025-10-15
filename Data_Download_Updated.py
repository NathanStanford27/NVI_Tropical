#!/usr/bin/env python3
import subprocess
import os
import datetime
import argparse
import shutil
import bz2

# --- Map satellite to AWS bucket ---
SAT_BUCKETS = {
    "goes16": "s3://noaa-goes16/ABI-L1b-RadF",
    "goes17": "s3://noaa-goes17/ABI-L1b-RadF",
    "goes18": "s3://noaa-goes18/ABI-L1b-RadF",
    "goes19": "s3://noaa-goes19/ABI-L1b-RadF",  # placeholder
    "himawari8": "s3://noaa-himawari8/AHI-L1b-FLDK",
    "himawari9": "s3://noaa-himawari9/AHI-L1b-FLDK",
}


def daterange(start_date: datetime.date, end_date: datetime.date):
    """Yield each date in a range (inclusive)."""
    for n in range((end_date - start_date).days + 1):
        yield start_date + datetime.timedelta(n)


def decompress_bz2_in_dir(directory: str):
    """Recursively decompress all .bz2 files in a directory and remove originals."""
    found_any = False
    for root, _, files in os.walk(directory):
        for fname in files:
            if fname.lower().endswith(".bz2"):
                found_any = True
                fpath = os.path.join(root, fname)
                outpath = fpath[:-4]  # strip .bz2
                print(f"[INFO] Decompressing {fpath} → {outpath}")
                try:
                    with bz2.open(fpath, "rb") as f_in, open(outpath, "wb") as f_out:
                        shutil.copyfileobj(f_in, f_out)
                    os.remove(fpath)
                    print(f"[OK] {fname} decompressed and original removed")
                except Exception as e:
                    print(f"[ERROR] Could not decompress {fpath}: {e}")
    if not found_any:
        print(f"[WARN] No .bz2 files found in {directory}")


def download_satellite_range(
    satellite: str,
    start_date: str,
    end_date: str,
    hours: list[int],
    base_dir: str,
    bands_to_keep: list[str],
    dry_run: bool = False,
):
    """Download selected satellite radiance data for GOES or Himawari."""

    if not shutil.which("aws"):
        raise RuntimeError("AWS CLI not found. Please install AWS CLI v2.")

    satellite = satellite.lower()
    if satellite not in SAT_BUCKETS:
        raise ValueError("Satellite must be one of: " + ", ".join(SAT_BUCKETS.keys()))

    start_dt = datetime.date.fromisoformat(start_date)
    end_dt = datetime.date.fromisoformat(end_date)

    for dt in daterange(start_dt, end_dt):
        year = dt.year
        doy = dt.timetuple().tm_yday  # unified folder naming
        month = dt.month
        day = dt.day

        for hour in hours:
            hour_str = f"{hour:02d}"
            bucket = SAT_BUCKETS[satellite]

            # --- Unified folder naming convention ---
            local_dir = os.path.join(base_dir, f"{year}{doy:03d}_{hour_str}")
            os.makedirs(local_dir, exist_ok=True)

            # --- GOES Satellites (hourly folders, multiple scans) ---
            if satellite.startswith("goes"):
                s3_path = f"{bucket}/{year}/{doy:03d}/{hour_str}/"
                scan_pattern = f"s{year}{doy:03d}{hour_str}00"  # exact HHMM=00

                cmd = [
                    "aws", "s3", "cp",
                    "--no-sign-request",
                    "--recursive",
                    "--exclude", "*",
                ]
                if bands_to_keep:
                    for band in bands_to_keep:
                        cmd.extend(["--include", f"*{band}*{scan_pattern}*"])
                else:
                    cmd.extend(["--include", f"*{scan_pattern}*"])

            # --- Himawari Satellites (10-min folders, HHMM) ---
            elif satellite.startswith("himawari"):
                hhmm = f"{hour_str}00"
                s3_path = f"{bucket}/{year}/{month:02d}/{day:02d}/{hhmm}/"

                cmd = [
                    "aws", "s3", "cp",
                    "--no-sign-request",
                    "--recursive",
                    "--exclude", "*",
                ]
                if bands_to_keep:
                    for band in bands_to_keep:
                        cmd.extend(["--include", f"*{band}*"])
                else:
                    cmd.extend(["--include", "*"])

            # Finish building command
            cmd.extend([s3_path, local_dir])

            print(f"\n[INFO] {satellite.upper()} {s3_path} → {local_dir}")
            print(f"       Bands: {bands_to_keep if bands_to_keep else 'ALL'}")

            if dry_run:
                print("[DRY RUN] Would run:", " ".join(cmd))
            else:
                try:
                    subprocess.run(cmd, check=True)
                    # For Himawari, decompress files in this folder immediately
                    if satellite.startswith("himawari"):
                        decompress_bz2_in_dir(local_dir)
                except subprocess.CalledProcessError as e:
                    print(f"[WARN] Failed to copy from {s3_path} ({e})")

    # Final sweep for Himawari: ensure no bz2 files remain anywhere in base_dir
    if satellite.startswith("himawari") and not dry_run:
        print(f"\n[INFO] Final sweep of {base_dir} for leftover .bz2 files...")
        decompress_bz2_in_dir(base_dir)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Download GOES or Himawari data at synoptic times (00,06,12,18Z)")
    parser.add_argument("satellite", choices=list(SAT_BUCKETS.keys()), help="Satellite to download from")
    parser.add_argument("start_date", help="Start date (YYYY-MM-DD)")
    parser.add_argument("end_date", help="End date (YYYY-MM-DD)")
    parser.add_argument("--hours", nargs="+", type=int, required=True,
                        help="List of UTC hours to download (e.g. --hours 0 6 12 18)")
    parser.add_argument("--out", required=True, help="Base output directory")
    parser.add_argument("--bands", nargs="*", default=[],
                        help="List of bands to keep (e.g. --bands C07 C11 for GOES or B07 B11 for Himawari). Default = ALL bands.")
    parser.add_argument("--dry-run", action="store_true",
                        help="Show which aws commands would run without executing them")

    args = parser.parse_args()

    download_satellite_range(
        satellite=args.satellite,
        start_date=args.start_date,
        end_date=args.end_date,
        hours=args.hours,
        base_dir=args.out,
        bands_to_keep=args.bands,
        dry_run=args.dry_run
    )














