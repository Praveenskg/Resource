# 🔑 SSH Key Generation & Setup Guide

## Step-by-Step Key Generation

### 1. Generate SSH Key

```bash
# Recommended: ED25519 (more secure, faster)
ssh-keygen -t ed25519 -C "your_email@example.com"

# Alternative: RSA 4096 bits
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

**During key generation:**
- Press Enter to accept default file location (`~/.ssh/id_ed25519`)
- Enter a passphrase (recommended for security)
- Confirm the passphrase

### 2. Add Key to SSH Agent

```bash
# Start SSH agent
eval "$(ssh-agent -s)"

# Add key to agent
ssh-add ~/.ssh/id_ed25519

# For macOS, also add to keychain
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

### 3. Copy Public Key

```bash
# Display public key
cat ~/.ssh/id_ed25519.pub

# Copy to clipboard (macOS)
pbcopy < ~/.ssh/id_ed25519.pub

# Copy to clipboard (Linux)
xclip -sel clip < ~/.ssh/id_ed25519.pub

# Copy to clipboard (Windows Git Bash)
cat ~/.ssh/id_ed25519.pub | clip
```

### 4. Add Key to Service

#### GitHub

1. Go to GitHub → Settings → SSH and GPG keys
2. Click "New SSH key"
3. Paste your public key
4. Click "Add SSH key"

Test connection:
```bash
ssh -T git@github.com
```

#### GitLab

1. Go to GitLab → Preferences → SSH Keys
2. Paste your public key
3. Click "Add key"

Test connection:
```bash
ssh -T git@gitlab.com
```

#### Bitbucket

1. Go to Bitbucket → Personal settings → SSH keys
2. Click "Add key"
3. Paste your public key
4. Click "Add key"

Test connection:
```bash
ssh -T git@bitbucket.org
```

## Multiple Keys Setup

### Generate Multiple Keys

```bash
# GitHub key
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_github -C "github@example.com"

# GitLab key
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_gitlab -C "gitlab@example.com"

# Work key
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_work -C "work@example.com"
```

### Configure SSH Config

Edit `~/.ssh/config`:

```ssh-config
# GitHub
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_github
    IdentitiesOnly yes

# GitLab
Host gitlab.com
    HostName gitlab.com
    User git
    IdentityFile ~/.ssh/id_ed25519_gitlab
    IdentitiesOnly yes

# Work
Host work-gitlab
    HostName gitlab.work.com
    User git
    IdentityFile ~/.ssh/id_ed25519_work
    IdentitiesOnly yes
```

### Add All Keys to Agent

```bash
# Add all keys
ssh-add ~/.ssh/id_ed25519_github
ssh-add ~/.ssh/id_ed25519_gitlab
ssh-add ~/.ssh/id_ed25519_work

# List added keys
ssh-add -l
```

## Key Management

### Change Passphrase

```bash
ssh-keygen -p -f ~/.ssh/id_ed25519
```

### Remove Old Key from Agent

```bash
ssh-add -d ~/.ssh/id_ed25519
```

### Remove All Keys from Agent

```bash
ssh-add -D
```

### Backup Keys

```bash
# Create backup directory
mkdir -p ~/ssh-keys-backup

# Copy keys
cp ~/.ssh/id_ed25519* ~/ssh-keys-backup/

# Encrypt backup
tar -czf ssh-keys-backup.tar.gz ~/ssh-keys-backup/
```

## Security Best Practices

### 1. Use Strong Key Types

```bash
# Prefer ED25519
ssh-keygen -t ed25519

# If RSA is required, use 4096 bits minimum
ssh-keygen -t rsa -b 4096
```

### 2. Use Passphrases

Always use a passphrase for your private keys:
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
# Enter passphrase when prompted
```

### 3. Set Proper Permissions

```bash
# SSH directory
chmod 700 ~/.ssh

# Private key
chmod 600 ~/.ssh/id_ed25519

# Public key
chmod 644 ~/.ssh/id_ed25519.pub

# Config file
chmod 600 ~/.ssh/config

# Known hosts
chmod 644 ~/.ssh/known_hosts
```

### 4. Rotate Keys Regularly

```bash
# Generate new key
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_new -C "new_key@example.com"

# Add to services
# Remove old key from services
# Update config files
# Remove old key
rm ~/.ssh/id_ed25519
rm ~/.ssh/id_ed25519.pub
```

### 5. Use Different Keys for Different Services

Don't reuse the same key for multiple services. Generate separate keys:
- Personal GitHub
- Work GitHub/GitLab
- Personal servers
- Work servers

## Troubleshooting

### Permission Denied

```bash
# Check key permissions
ls -la ~/.ssh/

# Fix permissions
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub

# Add key to agent
ssh-add ~/.ssh/id_ed25519
```

### Key Not Found

```bash
# List keys
ls -la ~/.ssh/

# Check if key is added
ssh-add -l

# Add key
ssh-add ~/.ssh/id_ed25519
```

### Wrong Key Used

```bash
# Use specific key
ssh -i ~/.ssh/id_ed25519_github git@github.com

# Or configure in ~/.ssh/config
```

### Host Key Verification Failed

```bash
# Remove old host key
ssh-keygen -R hostname

# Or edit known_hosts
nano ~/.ssh/known_hosts
```

## Quick Reference

```bash
# Generate key
ssh-keygen -t ed25519 -C "email@example.com"

# Add to agent
ssh-add ~/.ssh/id_ed25519

# Copy public key
cat ~/.ssh/id_ed25519.pub | pbcopy  # macOS
cat ~/.ssh/id_ed25519.pub | xclip -sel clip  # Linux

# Test connection
ssh -T git@github.com

# List keys in agent
ssh-add -l

# Remove key from agent
ssh-add -d ~/.ssh/id_ed25519
```

---

> Created with ❤️ by Praveen Singh

