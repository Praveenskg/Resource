# 🐚 Oh My Zsh Configuration

A comprehensive Zsh shell configuration with custom aliases, functions, and a personalized prompt for enhanced productivity.

## 📋 Table of Contents

- [Overview](#overview)
- [Installation](#installation)
- [Configuration Files](#configuration-files)
- [Features](#features)
- [Aliases](#aliases)
- [Functions](#functions)
- [Custom Prompt](#custom-prompt)
- [Environment Setup](#environment-setup)

---

## 🎯 Overview

This configuration provides a powerful, customized Zsh shell experience with:

- 🎨 **Custom Prompt** - Displays time, date, Git branch, Node/Python versions, and battery status
- 📜 **Enhanced History** - 10,000 entries with smart deduplication and session sharing
- ⚡ **Productive Aliases** - Shortcuts for Git, Docker, NPM, and system commands
- 🔧 **Useful Functions** - Helper functions for common development tasks
- 🚀 **Plugin Support** - Git, Docker, NPM, autosuggestions, and syntax highlighting
- 📦 **Environment Management** - NVM and PNPM integration
- ⚡ **Performance Optimized** - Efficient prompt rendering and function calls

---

## 📦 Installation

### Prerequisites

```bash
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install required plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

# Install eza (modern ls replacement)
# Ubuntu/Debian
sudo apt install eza

# macOS
brew install eza
```

### Setup

1. **Backup your existing `.zshrc`** (if you have one):
   ```bash
   cp ~/.zshrc ~/.zshrc.backup
   ```

2. **Copy the configuration**:
   ```bash
   cp Settings.txt ~/.zshrc
   ```

3. **Reload your shell**:
   ```bash
   source ~/.zshrc
   ```

**Note:** The configuration file follows Oh My Zsh best practices:
- History settings are configured **before** sourcing Oh My Zsh (required)
- Terminal title is set **after** Oh My Zsh loads
- Environment variables are properly exported
- PATH management avoids duplicates

---

## 📄 Configuration Files

### Settings.txt
Complete Zsh configuration file with all aliases, functions, and environment setup. This is the main configuration file to copy to `~/.zshrc`.

---

## ✨ Features

### 🎨 Custom Prompt

The prompt displays:
- **Time & Date** - Current time and day of week
- **User Name** - Your name (Praveen Singh)
- **Current Directory** - Shortened path with folder icon
- **Git Branch** - Current branch name (if in a Git repository)
- **Node Version** - Current Node.js version
- **Python Version** - Current Python version (when available)
- **Battery Status** - Battery percentage (color-coded: red <20%, green >80%)
- **Virtual Environment** - Python venv indicator (when active)

### 📜 History Configuration

Enhanced history management with:
- **10,000 entries** stored in history
- **Shared history** between sessions
- **Duplicate prevention** - ignores duplicate commands
- **Space-prefixed commands** - hidden from history
- **Smart deduplication** - removes old duplicates automatically

### 🔌 Plugins

- `git` - Git aliases and functions
- `docker` - Docker aliases
- `npm` - NPM aliases
- `zsh-autosuggestions` - Command autosuggestions
- `zsh-completions` - Enhanced tab completions
- `zsh-syntax-highlighting` - Syntax highlighting

---

## 🔧 Aliases

### File & Navigation

| Alias            | Command                     | Description                            |
| ---------------- | --------------------------- | -------------------------------------- |
| `ls`             | `eza -la --icons`           | List files with icons                  |
| `ll`             | `eza -l --icons`            | List files (short format)              |
| `tree`           | `eza --tree --icons`        | Tree view with icons                   |
| `cls`            | `clear`                     | Clear screen                           |
| `..`             | `cd ..`                     | Go up one directory                    |
| `...`            | `cd ../..`                  | Go up two directories                  |
| `....`           | `cd ../../..`               | Go up three directories                |
| `..2`            | `cd ../../`                 | Go up two directories (alternative)    |
| `..3`            | `cd ../../../`              | Go up three directories (alternative)  |
| `-`              | `cd -`                      | Go back to previous directory          |
| `c.`             | `code .`                    | Open VS Code in current directory      |
| `cr`             | `cursor .`                  | Open Cursor in current directory       |
| `bat`            | `batcat` or `bat`           | Modern cat replacement (auto-detected) |
| `md`             | `mkdir -p`                  | Create directory                       |
| `rd`             | `rm -rf`                    | Remove directory                       |
| `f "*.js"`       | `find . -type f -name`      | Find files                             |
| `d "components"` | `find . -type d -name`      | Find directories                       |
| `reload`         | `source ~/.zshrc`           | Reload Zsh configuration               |
| `sz`             | `source ~/.zshrc`           | Reload Zsh (short)                     |
| `paths`          | `echo $PATH \| tr ":" "\n"` | Show PATH entries                      |
| `usage`          | `du -sh *`                  | Show folder sizes                      |
| `whichp`         | `which -a`                  | Show all executable paths              |

### Git Aliases

#### Basic Commands

| Alias    | Command                                      | Description          |
| -------- | -------------------------------------------- | -------------------- |
| `gs`     | `git status`                                 | Check status         |
| `gss`    | `git status -s`                              | Short status         |
| `gl`     | `git log --oneline --graph --decorate --all` | Pretty log           |
| `gshow`  | `git show`                                   | Show last commit     |
| `gdiff`  | `git diff`                                   | Show differences     |
| `gstats` | `git diff --stat`                            | Show diff statistics |

#### Staging & Committing

| Alias        | Command                          | Description          |
| ------------ | -------------------------------- | -------------------- |
| `ga`         | `git add .`                      | Add all changes      |
| `gau`        | `git add -u`                     | Update tracked files |
| `gcm "msg"`  | `git commit -m`                  | Commit with message  |
| `gc "msg"`   | `git commit -S -m`               | Signed commit        |
| `gcse "msg"` | `git commit -S --allow-empty -m` | Empty signed commit  |
| `gamend`     | `git commit --amend --no-edit`   | Amend last commit    |

#### Branch Management

| Alias        | Command         | Description            |
| ------------ | --------------- | ---------------------- |
| `gsw branch` | `git switch`    | Switch branch          |
| `gcb branch` | `git switch -c` | Create & switch branch |
| `gb`         | `git branch`    | List branches          |
| `gba`        | `git branch -a` | List all branches      |
| `gbd branch` | `git branch -D` | Delete branch          |
| `gtags`      | `git tag -l`    | List tags              |

#### Remote Operations

| Alias     | Command                       | Description       |
| --------- | ----------------------------- | ----------------- |
| `gfetch`  | `git fetch --all --prune`     | Fetch all remotes |
| `gpl`     | `git pull`                    | Pull changes      |
| `gplr`    | `git pull --rebase`           | Pull with rebase  |
| `gp`      | `git push`                    | Push changes      |
| `gpf`     | `git push -f`                 | Force push        |
| `gpfl`    | `git push --force-with-lease` | Safe force push   |
| `gcl url` | `git clone`                   | Clone repository  |
| `gremote` | `git remote -v`               | Show remotes      |

#### Stash & Undo

| Alias          | Command                   | Description                   |
| -------------- | ------------------------- | ----------------------------- |
| `gstash "msg"` | `git stash push -m`       | Stash with message            |
| `gstashp`      | `git stash pop`           | Apply stash                   |
| `gundo`        | `git reset --soft HEAD~1` | Undo commit (keep changes)    |
| `gundo-hard`   | `git reset --hard HEAD~1` | Undo commit (discard changes) |
| `gundo-mixed`  | `git reset HEAD~1`        | Mixed reset                   |

#### Utilities

| Alias         | Command                                                                                                         | Description                                       |
| ------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------------------------------- |
| `gclean`      | `git fetch --prune && git branch --merged \| grep -v "\*" \| xargs -r -n 1 git branch -D 2>/dev/null \|\| true` | Clean merged branches (cross-platform compatible) |
| `gcount`      | `git rev-list --all --count`                                                                                    | Count commits                                     |
| `gfetchprune` | `git fetch --prune`                                                                                             | Fetch and prune                                   |

### Docker Aliases

| Alias             | Command                                                                                                         | Description              |
| ----------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------ |
| `dps`             | `docker ps`                                                                                                     | List containers          |
| `dstop`           | `docker stop $(docker ps -q 2>/dev/null) 2>/dev/null \|\| true`                                                 | Stop all containers      |
| `drm`             | `docker rm -f $(docker ps -aq 2>/dev/null) 2>/dev/null \|\| true`                                               | Remove all containers    |
| `dprune`          | `docker system prune -af --volumes`                                                                             | Clean Docker system      |
| `docker-clean`    | `docker rm -f $(docker ps -aq 2>/dev/null) 2>/dev/null \|\| true`                                               | Clean containers         |
| `dimg`            | `docker images`                                                                                                 | List images              |
| `dnet`            | `docker network ls`                                                                                             | List networks            |
| `dlogs container` | `docker logs -f`                                                                                                | Follow logs              |
| `dbash container` | `docker exec -it`                                                                                               | Execute in container     |
| `mongo-docker`    | `echo "🐳 Switching to Docker Mongo (27017)" && sudo systemctl stop mongod && docker compose --profile db up -d` | Switch to Docker MongoDB |
| `mongo-local`     | `echo "🟢 Switching to Local Mongo (27017)" && docker compose --profile db down && sudo systemctl start mongod`  | Switch to local MongoDB  |
| `mongo-check`     | `echo "🔎 Mongo on 27017:" && sudo lsof -i :27017`                                                               | Check MongoDB status     |
| `mongo-shell`     | `mongosh mongodb://localhost:27017`                                                                             | Open MongoDB shell       |

### NPM/PNPM Aliases

| Alias          | Command                                                          | Description                  |
| -------------- | ---------------------------------------------------------------- | ---------------------------- |
| `dev`          | `npm run dev`                                                    | Run dev script               |
| `ni`           | `npm install`                                                    | Install packages             |
| `nr script`    | `npm run`                                                        | Run npm script               |
| `nrb`          | `npm run build`                                                  | Build project                |
| `nrt`          | `npm run test`                                                   | Run tests                    |
| `nrs`          | `npm run start`                                                  | Start project                |
| `od`           | `npm outdated`                                                   | Show outdated packages       |
| `nrun`         | `npm run`                                                        | Run npm script (alternative) |
| `pi`           | `pnpm install`                                                   | Install with pnpm            |
| `pr script`    | `pnpm run`                                                       | Run with pnpm                |
| `pm`           | `pnpm`                                                           | pnpm shortcut                |
| `format`       | `npm run format`                                                 | Format code                  |
| `clean`        | `npm run clean`                                                  | Clean project                |
| `start`        | `npm start`                                                      | Start application            |
| `nuke`         | `rm -rf node_modules package-lock.json pnpm-lock.yaml yarn.lock` | Remove all lock files        |
| `reinstall`    | `nuke && npm install`                                            | Clean reinstall              |
| `npmls`        | `npm ls --depth=0`                                               | List top-level packages      |
| `nu package`   | `npm uninstall`                                                  | Uninstall package            |
| `nu-g package` | `npm uninstall -g`                                               | Uninstall global package     |
| `pui package`  | `pnpm remove`                                                    | Remove with pnpm             |
| `yui package`  | `yarn remove`                                                    | Remove with yarn             |

### System Aliases

| Alias       | Command                                  | Description                  |
| ----------- | ---------------------------------------- | ---------------------------- |
| `ports`     | `sudo lsof -i -P -n \| grep LISTEN`      | Show listening ports         |
| `ports-tcp` | `sudo lsof -nP -iTCP -sTCP:LISTEN`       | Show TCP ports               |
| `update`    | `sudo apt update && sudo apt upgrade -y` | Update system                |
| `please`    | `sudo $(fc -ln -1)`                      | Rerun last command with sudo |
| `c`         | `clear`                                  | Clear screen                 |
| `cls`       | `clear`                                  | Clear screen (alternative)   |
| `h`         | `history`                                | Show history                 |
| `j`         | `jobs -l`                                | Show jobs                    |
| `myip`      | `curl ifconfig.me`                       | Show public IP               |
| `iplocal`   | `hostname -I`                            | Show local IP                |
| `pingg`     | `ping google.com`                        | Ping Google                  |
| `pingc`     | `ping cloudflare.com`                    | Ping Cloudflare              |
| `flushdns`  | `sudo systemd-resolve --flush-caches`    | Flush DNS cache              |
| `mem`       | `free -h`                                | Show memory usage            |
| `cpu`       | `lscpu`                                  | Show CPU info                |
| `temp`      | `sensors`                                | Show temperature             |
| `clsall`    | `clear && printf "\e[3J"`                | Clear scrollback             |
| `now`       | `date +"%Y-%m-%d %H:%M:%S"`              | Current timestamp            |
| `today`     | `date +"%A, %d %B %Y"`                   | Today's date                 |

---

## 🛠️ Functions

### Git Functions

#### `get_git_branch()`
Displays the current Git branch in green color. Uses `git rev-parse` for better performance and filters out "HEAD" state.

```bash
# Automatically called in prompt
# Shows: ⎇ main
# Optimized for performance with null checks
```

### System Functions

#### `get_battery()`
Displays battery percentage with color coding:
- 🔴 Red if < 20%
- 🟢 Green if > 80%
- ⚪ Default otherwise

```bash
# Automatically called in prompt
# Shows: 🔋 85%
```

#### `get_node_version()`
Displays current Node.js version with null checking for better reliability.

```bash
# Automatically called in prompt
# Shows: 🧠 v18.0.0
# Only displays if Node.js is installed
```

#### `get_python_version()`
Displays current Python version when Python 3 is available.

```bash
# Automatically called in prompt
# Shows: 🐍 3.9.0
# Only displays if Python 3 is installed
```

#### `pfind <name>`
Find processes by name.

```bash
pfind node
# Shows all node processes
```

#### `killport <port>`
Kill process running on a specific port. Cross-platform compatible with fallback support for both `fuser` (Linux) and `lsof` (macOS/Linux).

```bash
killport 3000
# Kills process on port 3000
# Automatically detects available tools
# Returns error if neither fuser nor lsof is available
```

#### `grename <new-name>`
Rename current Git branch locally and remotely. Includes error handling and only updates remote if origin exists.

```bash
grename new-branch-name
# Renames branch and updates remote
# Validates git repository before proceeding
# Safely handles missing remote repositories
```

#### `extract <file>`
Extract various archive formats automatically.

```bash
extract archive.tar.gz
extract archive.zip
extract archive.rar
# Supports: tar, tar.gz, tar.bz2, zip, rar, gz, bz2, 7z
```

#### `serve [port]`
Start a simple HTTP server.

```bash
serve        # Default port 3000
serve 8080   # Custom port
```

#### `pstree_find <name>`
Find process in process tree.

```bash
pstree_find node
# Shows node process tree
```

---

## 🎨 Custom Prompt

The prompt configuration displays:

```
[12:30 PM - Monday] 💻 Praveen Singh [📁~/projects/my-app] ⎇ main 🧠 v18.0.0 🐍 3.9.0 🔋 85%  ➤
```

**Components:**
- `[12:30 PM - Monday]` - Time and day (yellow)
- `💻 Praveen Singh` - User name (cyan)
- `[📁~/projects/my-app]` - Current directory (magenta, `~` replaces `$HOME`)
- `⎇ main` - Git branch (green, if in Git repo, excludes "HEAD" state)
- `🧠 v18.0.0` - Node version (blue, only if Node.js is installed)
- `🐍 3.9.0` - Python version (yellow, only if Python is installed)
- `🔋 85%` - Battery status (color-coded: red <20%, green >80%)
- `➤` - Prompt symbol (green)

**Virtual Environment Support:**
When a Python virtual environment is active, the prompt shows:
```
(venv) [12:30 PM - Monday] 💻 Praveen Singh ...
```

The prompt is optimized for performance with efficient function calls and null checks.

---

## ⚙️ Environment Setup

### NVM (Node Version Manager)

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

### PNPM

```bash
export PNPM_HOME="$HOME/.local/share/pnpm"
# Smart PATH addition (only if not already present)
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
```

### PATH Management

The configuration includes smart PATH management:
- Avoids duplicate PATH entries
- Adds `$HOME/.local/bin` to PATH
- Custom PATH additions can be added at the bottom of the configuration

### Python Virtual Environment

The prompt automatically detects and displays Python virtual environments:

```bash
# When venv is active, prompt shows:
(venv) [prompt]
```

---

## 🔄 Reloading Configuration

After making changes to `.zshrc`:

```bash
# Method 1: Using alias
reload

# Method 2: Using short alias
sz

# Method 3: Manual reload
source ~/.zshrc
```

---

## 📝 Customization

### Change User Name

Edit the prompt line in `Settings.txt`:

```bash
# Find this line (around line 308):
PROMPT='%F{yellow}[%D{%I:%M %p} - %D{%A}]%f 💻 %F{cyan}Praveen Singh%f %F{magenta}[📁${PWD/$HOME/~}]%f$(get_git_branch)$(get_node_version)$(get_python_version)$(get_battery)  %F{green}➤%f '

# Change to your name:
PROMPT='%F{yellow}[%D{%I:%M %p} - %D{%A}]%f 💻 %F{cyan}Your Name%f %F{magenta}[📁${PWD/$HOME/~}]%f$(get_git_branch)$(get_node_version)$(get_python_version)$(get_battery)  %F{green}➤%f '
```

### Configure History

Edit the history section (around lines 7-21) to customize:

```bash
HISTSIZE=10000        # Number of commands in memory
SAVEHIST=10000        # Number of commands saved to file
HISTFILE="$HOME/.zsh_history"  # History file location

# Modify setopt options to customize behavior
```

### Add Custom Aliases

Add to the appropriate section in `Settings.txt`:

```bash
# Custom aliases section
alias myalias='your command here'
```

### Add Custom Functions

Add to the Functions section:

```bash
my_function() {
  # Your function code
}
```

---

## 🎯 Usage Examples

### Daily Workflow

```bash
# Navigate quickly
..          # Go up one level
...         # Go up two levels
c.          # Open VS Code

# Git workflow
gs          # Check status
ga          # Add all changes
gcm "fix: bug"  # Commit
gp          # Push

# Docker workflow
dps         # List containers
dlogs app   # Follow logs
dbash app   # Enter container

# NPM workflow
ni          # Install
dev         # Run dev server
nrb         # Build
```

---

## 🔍 Troubleshooting

### Aliases Not Working

```bash
# Reload configuration
source ~/.zshrc

# Check if alias exists
alias | grep aliasname
```

### Plugin Not Loading

```bash
# Verify plugin is installed
ls ~/.oh-my-zsh/custom/plugins/

# Check .zshrc for plugin name
grep plugins ~/.zshrc
```

### Prompt Not Displaying Correctly

```bash
# Check if functions are defined
type get_git_branch
type get_battery
type get_node_version
type get_python_version

# Verify eza is installed (for ls alias)
which eza
```

---

## 📚 Related Resources

- [Oh My Zsh Official](https://ohmyz.sh/)
- [Zsh Documentation](https://www.zsh.org/)
- [Eza (Modern ls)](https://github.com/eza-community/eza)

---

## 💡 Tips

1. **Use Tab Completion** - Enhanced completions work with all aliases
2. **Command History** - Press `Ctrl+R` to search history (10,000 entries stored)
3. **Autosuggestions** - Press `→` to accept suggestion
4. **Quick Navigation** - Use `..`, `...`, `....` for fast directory navigation
5. **Git Shortcuts** - Most Git operations are 2-3 characters
6. **History Sharing** - History is shared between all terminal sessions
7. **Space Prefix** - Start commands with space to hide them from history
8. **Performance** - Prompt functions are optimized for fast rendering

---

> Created with ❤️ by Praveen Singh

