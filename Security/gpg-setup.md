# 🔐 GPG Key Setup Guide

## Generate GPG Key

```bash
# Generate new key
gpg --full-generate-key

# Follow prompts:
# 1. Key type: RSA and RSA (default)
# 2. Key size: 4096
# 3. Expiration: 1y (or your preference)
# 4. Name, Email, Comment
# 5. Passphrase (important!)
```

## List Keys

```bash
# List public keys
gpg --list-keys

# List private keys
gpg --list-secret-keys

# List with key IDs
gpg --list-keys --keyid-format LONG
```

## Export Keys

```bash
# Export public key
gpg --armor --export YOUR_EMAIL > public-key.asc

# Export private key (backup)
gpg --armor --export-secret-keys YOUR_EMAIL > private-key.asc
```

## Import Keys

```bash
# Import public key
gpg --import public-key.asc

# Import private key
gpg --import private-key.asc
```

## Git Configuration

```bash
# Set GPG key for Git
git config --global user.signingkey YOUR_KEY_ID

# Enable commit signing
git config --global commit.gpgsign true

# Sign commits
git commit -S -m "Signed commit"
```

## GitHub Setup

1. Export public key: `gpg --armor --export YOUR_EMAIL`
2. Go to GitHub → Settings → SSH and GPG keys
3. Click "New GPG key"
4. Paste public key
5. Save

## Verify Signing

```bash
# Verify signed commit
git log --show-signature

# Verify file signature
gpg --verify signature.asc file.txt
```

---

> Created with ❤️ by Praveen Singh

