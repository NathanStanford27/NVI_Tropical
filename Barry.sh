# Go to your project folder
cd ~/NVI_Model/night2day/READY

# Initialize Git (if not already initialized)
git init

# Add all files to staging
git add .

# Commit with a message
git commit -m "Initial commit - NVI_Tropical model upload"

# Create or rename the branch to main
git branch -M main

# Add your GitHub repository as the remote (overwrite if needed)
git remote remove origin 2>/dev/null
git remote add origin https://github.com/NathanStanford27/NVI_Tropical.git

# Push to GitHub
git push -u origin main



