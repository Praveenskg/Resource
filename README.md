# Resources

Resources That is used in daily life of developer

## Use it to return empty data

```bash
Array.from({length:10}).map((_,i)=><Component key={i}/>);
```

## Terminal Command

Run The GPG

```bash
gpg-agent --daemon
mv FolderName directory
git add -A
```

## Git Command

```bash
# Create and switch to a new branch
git checkout -b (branch name)

# Rebase a branch
git rebase (branch name)

# Switch to an existing branch
git checkout (branch name)

git switch main

# Stash changes
git stash

git checkout (branch name)

# Cleanup branches
git branch cleanup

# Check the status of the repository
git status

# Show a one-line log history
git log --oneline

# Add all changes
git add -A

# Commit changes with a message
git commit -m "Commit message"

# Push changes to the remote repository
git push origin (branch name)

# Pull latest changes
git pull origin (branch name)

# Fetch latest updates from remote
git fetch --all

# Merge another branch into the current branch
git merge (branch name)

# Reset the last commit (soft reset, keeps changes staged)
git reset --soft HEAD~1

# Reset the last commit (hard reset, discards changes)
git reset --hard HEAD~1

# Show remote repositories
git remote -v

# Remove a file from the staging area
git reset (file name)

# Amend the last commit
git commit --amend -m "New commit message"

# Undo last pushed commit
git revert HEAD

# Delete a local branch
git branch -d (branch name)

# Delete a remote branch
git push origin --delete (branch name)

# View the last commit
git show HEAD

# Clone a repository
git clone (repo URL)
