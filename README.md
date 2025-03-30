# Resources

Resources That is used in daily life of developer

## Use it to return empty data

```bash
Array.from({length:10}).map((_,i)=><Component key={i}/>);
```

## Terminal Command

Run The GPG

```bash
# Start the GPG agent daemon
gpg-agent --daemon

# Move a folder to another directory
mv FolderName directory
```

## Git Command

```bash
# Create and switch to a new branch
git checkout -b (branch name)  # Creates a new branch and switches to it

# Push the branch to remote repository
git push -u origin (branch name)  # Pushes the new branch and sets upstream tracking

# Rebase a branch
git rebase (branch name)  # Applies changes from one branch onto another

# Switch to an existing branch
git checkout (branch name)  # Switches to the specified branch

git switch main  # Switches to the main branch

# Stash changes
git stash  # Saves uncommitted changes for later use
git stash pop  # Restores the most recent stash

git checkout (branch name)  # Switches to the specified branch

# Cleanup branches
git branch cleanup  # Removes merged branches (if configured)

# Check the status of the repository
git status  # Displays the state of the working directory and staging area

# Show a one-line log history
git log --oneline  # Shows a concise commit history

# Add all changes to staging
git add -A  # Adds all changes (new, modified, deleted files) to the staging area

# Commit changes with a message
git commit -m "Commit message"  # Commits staged changes with a descriptive message

# Push changes to the remote repository
git push origin (branch name)  # Pushes committed changes to the remote branch

# Pull latest changes from the remote repository
git pull origin (branch name)  # Fetches and merges the latest changes

# Fetch latest updates from the remote repository
git fetch --all  # Retrieves updates but does not merge them

# Merge another branch into the current branch
git merge (branch name)  # Merges the specified branch into the current branch

# Reset the last commit (soft reset, keeps changes staged)
git reset --soft HEAD~1  # Moves HEAD back by one commit, keeps changes staged

# Reset the last commit (hard reset, discards changes)
git reset --hard HEAD~1  # Moves HEAD back by one commit, discards changes permanently

# Show remote repositories
git remote -v  # Displays the remote repository URLs

# Remove a file from the staging area
git reset (file name)  # Unstages a file without deleting changes

# Amend the last commit
git commit --amend -m "New commit message"  # Modifies the last commit message

# Undo last pushed commit
git revert HEAD  # Creates a new commit that undoes the last commit

# Delete a local branch
git branch -d (branch name)  # Deletes the specified branch locally

# Delete a remote branch
git push origin --delete (branch name)  # Deletes the specified branch remotely

# View the last commit
git show HEAD  # Displays details of the most recent commit

# Clone a repository
git clone (repo URL)  # Downloads a repository from the given URL

# Best Practices

# Configure user details
git config --global user.name "Your Name"  # Sets global username
git config --global user.email "your.email@example.com"  # Sets global email

# Check Git configuration
git config --list  # Lists all Git configurations

# Create a .gitignore file to exclude unnecessary files
touch .gitignore  # Creates a .gitignore file

# Avoid committing sensitive data
git update-index --assume-unchanged (file name)  # Marks a file as unchanged

# Squash multiple commits before merging
git rebase -i HEAD~(number of commits)  # Interactive rebase to combine commits

# Check differences before committing
git diff  # Shows unstaged changes
git diff --staged  # Shows staged changes

# Set upstream branch for tracking
git branch --set-upstream-to=origin/(branch name) (branch name)  # Links local branch to remote

# Restore a specific file from the last commit
git checkout HEAD -- (file name)  # Restores a file to the last committed state

# Clean up untracked files (DANGEROUS: Use with caution!)
git clean -df  # Deletes untracked files and directories permanently

# View commit history with full details
git log --graph --decorate --all --oneline  # Displays a compact commit history with visuals
```
