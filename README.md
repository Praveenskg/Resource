# Resources

Resources That is used in daily life of developer

## Use it to return empty data

```js
Array.from({length:10}).map((_,i)=><Component key={i}/>);
```

## Terminal Commands

```bash
# Start the GPG agent daemon
gpg-agent --daemon

# Move a folder to another directory
mv FolderName directory
```

## Git Commands
```bash
# create a empty commit 
git commit --allow-empty -m "Your commit message"
```
### Branch Management
```bash
# Create and switch to a new branch
git checkout -b (branch name)

# Switch to an existing branch
git checkout (branch name)
git switch main

# Switch to main branch and pull latest changes
git checkout main
git pull origin main

# Push the branch to remote repository
git push -u origin (branch name)

# Delete a local branch
git branch -d (branch name)

# Delete a remote branch
git push origin --delete (branch name)
```

### Staging and Committing
```bash
# Add all changes to staging
git add -A

# Commit changes with a message
git commit -m "Commit message"

# Amend the last commit message
git commit --amend -m "New commit message"
```

### Pushing and Pulling Changes
```bash
# Push changes to the remote repository
git push origin (branch name)

# Pull latest changes from the remote repository
git pull origin (branch name)

# Fetch latest updates from the remote repository
git fetch --all
```

### Merging and Rebasing
```bash
# Merge another branch into the current branch
git merge (branch name)

# Rebase a branch
git rebase (branch name)

# Rebase current branch with main
git rebase main
```

### Undoing Changes
```bash
# Reset the last commit (soft reset, keeps changes staged)
git reset --soft HEAD~1

# Reset the last commit (hard reset, discards changes)
git reset --hard HEAD~1

# Undo last pushed commit
git revert HEAD

# Remove a file from the staging area
git reset (file name)
```

### Stashing Changes
```bash
# Stash changes
git stash

# Apply the most recent stash
git stash pop
```

### Checking Repository Status
```bash
# Check the status of the repository
git status

# Show a one-line log history
git log --oneline

# View the last commit
git show HEAD

# Show remote repositories
git remote -v
```

### Cleaning Up
```bash
# Cleanup branches
git branch cleanup

# Clean up untracked files (DANGEROUS: Use with caution!)
git clean -df
```

### Best Practices
```bash
# Configure user details
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Check Git configuration
git config --list

# Create a .gitignore file to exclude unnecessary files
touch .gitignore

# Avoid committing sensitive data
git update-index --assume-unchanged (file name)

# Squash multiple commits before merging
git rebase -i HEAD~(number of commits)

# Check differences before committing
git diff  # Shows unstaged changes
git diff --staged  # Shows staged changes

# Set upstream branch for tracking
git branch --set-upstream-to=origin/(branch name) (branch name)

# Restore a specific file from the last commit
git checkout HEAD -- (file name)

# View commit history with full details
git log --graph --decorate --all --oneline
```
### Fixing an Issue (Best Practice Workflow) 
```bash  
# 1. Switch to main and pull latest changes
git checkout main
git pull origin main

# 2. Create a new branch for the fix
git checkout -b fix/your-issue-name
# or using switch
git switch -c fix/your-issue-name

# 3. Make your code changes (in VS Code or editor)

# 4. Stage your changes
git add .

# 5. Commit your changes with a descriptive message
git commit -m "message"

# 6. Push your branch to remote
git push -u origin fix/your-issue-name

# 7. Create a Pull Request (PR) on GitHub
# - Title: fix: align mobile layout
# - Description: Fixes #issue_number with screenshots if needed

# 8. Wait for review or bot to check (like ReviewDog or CI)

# 9. After approval, merge your PR into main

# 10. Clean up: delete the branch locally and remotely
git branch -d fix/your-issue-name
git push origin --delete fix/your-issue-name
```
