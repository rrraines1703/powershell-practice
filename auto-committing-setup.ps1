# Step 1, 2, 3 Variables
$GitHubUsername= Read-Host "Please enter your GitHub Username"
$CommitMessage='auto committed from auto-committing-setup.ps1!'
$PracticeRepoDir= Read-Host "Please enter your Repo Dir"
$AutoFile='auto-committing-setup.ps1'

# Step 4. Clone Repo
git clone "https://github.com/$GitHubUsername/powershell-practice.git" $PracticeRepoDir

# Step 5. Copy Repo
Copy-Item -Path "$PSCommandPath" $PracticeRepoDir

# Step 6. Change Dir
Set-Location $PracticeRepoDir

# Step 7. Add Script
git add $AutoFile

# Step 8. Commit
git commit -m "$CommitMessage"

# Step 9.
git push