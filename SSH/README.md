# 🔐 SSH Commands & Configuration

## 🔑 SSH Key Generation

### Generate SSH Key Pair

```bash
# Generate RSA key (4096 bits recommended)
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Generate ED25519 key (more secure, faster)
ssh-keygen -t ed25519 -C "your_email@example.com"

# Generate with custom filename
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_github -C "github_key"

# Generate without passphrase (not recommended)
ssh-keygen -t ed25519 -N "" -C "your_email@example.com"
```

### Key Management

```bash
# List SSH keys
ls -la ~/.ssh/

# View public key
cat ~/.ssh/id_ed25519.pub

# Copy public key to clipboard (macOS)
pbcopy < ~/.ssh/id_ed25519.pub

# Copy public key to clipboard (Linux)
xclip -sel clip < ~/.ssh/id_ed25519.pub

# Test SSH connection
ssh -T git@github.com

# Add key to SSH agent
ssh-add ~/.ssh/id_ed25519

# List keys in SSH agent
ssh-add -l

# Remove key from SSH agent
ssh-add -d ~/.ssh/id_ed25519

# Remove all keys from SSH agent
ssh-add -D
```

## 🔌 SSH Connection

### Basic Connection

```bash
# Connect to remote server
ssh username@hostname

# Connect with specific port
ssh -p 2222 username@hostname

# Connect with key file
ssh -i ~/.ssh/my_key username@hostname

# Connect with verbose output (debugging)
ssh -v username@hostname

# Connect and execute command
ssh username@hostname "ls -la"

# Connect with X11 forwarding
ssh -X username@hostname

# Connect with port forwarding
ssh -L 8080:localhost:80 username@hostname
```

### SSH Options

```bash
# Disable host key checking (not recommended)
ssh -o StrictHostKeyChecking=no username@hostname

# Use specific cipher
ssh -c aes256-ctr username@hostname

# Compression
ssh -C username@hostname

# Keep connection alive
ssh -o ServerAliveInterval=60 username@hostname

# Connection timeout
ssh -o ConnectTimeout=10 username@hostname
```

## 📋 SSH Config File

### Location

```bash
# User config
~/.ssh/config

# System config
/etc/ssh/ssh_config
```

### Config Example

```ssh-config
# GitHub
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_github
    IdentitiesOnly yes

# Work Server
Host work
    HostName work.example.com
    User admin
    Port 2222
    IdentityFile ~/.ssh/id_ed25519_work
    ServerAliveInterval 60
    ServerAliveCountMax 3

# Personal Server
Host personal
    HostName personal.example.com
    User myuser
    IdentityFile ~/.ssh/id_ed25519
    LocalForward 8080 localhost:80
    Compression yes

# Jump Host (Bastion)
Host bastion
    HostName bastion.example.com
    User admin
    IdentityFile ~/.ssh/id_ed25519

Host internal-server
    HostName 10.0.0.5
    User admin
    ProxyJump bastion
    IdentityFile ~/.ssh/id_ed25519
```

### Config Options

| Option | Description |
|-------|-------------|
| `Host` | Host alias name |
| `HostName` | Actual hostname or IP |
| `User` | Username for connection |
| `Port` | SSH port (default: 22) |
| `IdentityFile` | Path to private key |
| `IdentitiesOnly` | Only use specified keys |
| `ServerAliveInterval` | Keep-alive interval (seconds) |
| `ServerAliveCountMax` | Max keep-alive failures |
| `Compression` | Enable compression |
| `LocalForward` | Local port forwarding |
| `RemoteForward` | Remote port forwarding |
| `ProxyJump` | Jump host for connection |
| `StrictHostKeyChecking` | Check host keys |
| `UserKnownHostsFile` | Custom known hosts file |

## 🔄 Port Forwarding

### Local Port Forwarding

```bash
# Forward local port to remote
ssh -L 8080:localhost:80 username@hostname

# Forward to different remote host
ssh -L 8080:remote-host:80 username@hostname

# Background forwarding
ssh -f -N -L 8080:localhost:80 username@hostname
```

### Remote Port Forwarding

```bash
# Forward remote port to local
ssh -R 8080:localhost:80 username@hostname

# Background forwarding
ssh -f -N -R 8080:localhost:80 username@hostname
```

### Dynamic Port Forwarding (SOCKS Proxy)

```bash
# Create SOCKS proxy
ssh -D 1080 username@hostname

# Background proxy
ssh -f -N -D 1080 username@hostname
```

## 📁 File Transfer

### SCP (Secure Copy)

```bash
# Copy file to remote
scp file.txt username@hostname:/path/to/destination

# Copy file from remote
scp username@hostname:/path/to/file.txt ./

# Copy directory recursively
scp -r directory/ username@hostname:/path/to/destination

# Copy with specific port
scp -P 2222 file.txt username@hostname:/path/

# Copy with key file
scp -i ~/.ssh/my_key file.txt username@hostname:/path/

# Preserve permissions
scp -p file.txt username@hostname:/path/

# Show progress
scp -v file.txt username@hostname:/path/
```

### rsync over SSH

```bash
# Sync directory to remote
rsync -avz directory/ username@hostname:/path/to/destination

# Sync from remote
rsync -avz username@hostname:/path/to/source/ ./

# Exclude files
rsync -avz --exclude 'node_modules' directory/ username@hostname:/path/

# Delete files on destination
rsync -avz --delete directory/ username@hostname:/path/

# Show progress
rsync -avz --progress directory/ username@hostname:/path/

# Dry run
rsync -avz --dry-run directory/ username@hostname:/path/
```

### SFTP (SSH File Transfer Protocol)

```bash
# Connect to SFTP server
sftp username@hostname

# SFTP commands
sftp> put local_file.txt remote_file.txt
sftp> get remote_file.txt local_file.txt
sftp> ls
sftp> cd /path/to/directory
sftp> mkdir new_directory
sftp> rm file.txt
sftp> exit
```

## 🔒 Security Best Practices

### Key Security

```bash
# Set proper permissions
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub
chmod 600 ~/.ssh/config
chmod 644 ~/.ssh/known_hosts

# Use strong key types
# Prefer ED25519 over RSA
ssh-keygen -t ed25519 -C "your_email@example.com"

# Use passphrases for keys
ssh-keygen -t ed25519 -C "your_email@example.com"
```

### Server Security

```bash
# Disable password authentication (use keys only)
# Edit /etc/ssh/sshd_config
PasswordAuthentication no
PubkeyAuthentication yes

# Disable root login
PermitRootLogin no

# Change default port
Port 2222

# Limit login attempts
MaxAuthTries 3

# Restart SSH service
sudo systemctl restart sshd
```

## 🛠️ Troubleshooting

### Common Issues

```bash
# Permission denied (publickey)
# Check key permissions
chmod 600 ~/.ssh/id_ed25519

# Add key to SSH agent
ssh-add ~/.ssh/id_ed25519

# Host key verification failed
# Remove old host key
ssh-keygen -R hostname

# Connection timeout
# Check firewall and network
ssh -v username@hostname

# Too many authentication failures
# Use specific key
ssh -i ~/.ssh/id_ed25519 username@hostname
```

### Debugging

```bash
# Verbose output
ssh -v username@hostname

# More verbose
ssh -vv username@hostname

# Maximum verbosity
ssh -vvv username@hostname

# Test connection
ssh -T git@github.com
```

## 📝 Useful Commands

```bash
# Copy SSH key to remote server
ssh-copy-id username@hostname

# Copy with specific key
ssh-copy-id -i ~/.ssh/id_ed25519.pub username@hostname

# Test SSH config
ssh -F ~/.ssh/config -T HostName

# Generate SSH key for specific service
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_github -C "github@example.com"
```

---

> Created with ❤️ by Praveen Singh

