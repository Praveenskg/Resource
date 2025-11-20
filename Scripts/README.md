# 🔧 Automation Scripts

Collection of useful automation scripts for development environment setup and maintenance.

## 📋 Available Scripts

### setup-dev-env.sh
Sets up a complete development environment with:
- Node.js (via nvm)
- pnpm package manager
- Global npm packages (TypeScript, ESLint, Prettier, etc.)
- Git configuration
- Common project directories

**Usage:**
```bash
chmod +x setup-dev-env.sh
./setup-dev-env.sh
```

### install-tools.sh
Installs common development tools:
- Basic CLI tools (curl, wget, git, vim, etc.)
- Node.js development tools
- Python development tools

**Usage:**
```bash
chmod +x install-tools.sh
./install-tools.sh
```

### backup-configs.sh
Backs up important configuration files:
- Shell configs (.zshrc, .bashrc)
- Git config (.gitconfig)
- Editor configs (.vimrc, VS Code)
- SSH config
- Package manager configs

**Usage:**
```bash
chmod +x backup-configs.sh
./backup-configs.sh
```

Backups are stored in `~/.config-backup/` and automatically cleaned (keeps last 5).

## 🚀 Quick Setup

To make all scripts executable and run setup:

```bash
# Make scripts executable
chmod +x *.sh

# Run development environment setup
./setup-dev-env.sh
```

## 📝 Adding New Scripts

When adding new scripts:
1. Make them executable: `chmod +x script-name.sh`
2. Add shebang: `#!/bin/bash`
3. Add error handling: `set -e`
4. Add usage instructions to this README
5. Use consistent formatting and comments

## 🔒 Security Note

Always review scripts before running them, especially when downloading from the internet. These scripts are provided as-is for reference.

---

> Created with ❤️ by Praveen Singh

