# 🐧 Useful Linux Commands Cheat Sheet

## 🧠 Basic File/Folder Navigation

| Command         | Description                          |
| --------------- | ------------------------------------ |
| `pwd`           | Show current directory               |
| `ls -la`        | List all files including hidden ones |
| `cd foldername` | Change directory                     |
| `cd ..`         | Go up one level                      |
| `cd ~`          | Go to home directory                 |

---

## 🗂️ File & Directory Operations

| Command                 | Description                         |
| ----------------------- | ----------------------------------- |
| `mkdir foldername`      | Create a folder                     |
| `touch file.txt`        | Create an empty file                |
| `cp source dest`        | Copy file/folder                    |
| `mv old new`            | Move or rename file/folder          |
| `rm file.txt`           | Remove a file                       |
| `rm -rf folder`         | Force delete a folder (recursive) ⚠️ |
| `cat file.txt`          | Show file contents                  |
| `nano file.txt` / `vim` | Edit a file in terminal             |

---

## 🔍 Search & Find

| Command                   | Description                |
| ------------------------- | -------------------------- |
| `find . -name "file.txt"` | Find file from current dir |
| `grep "text" filename`    | Search text in file        |
| `grep -r "text" .`        | Search text recursively    |

---

## 🧰 System & Package Info

| Command        | Description            |
| -------------- | ---------------------- |
| `top` / `htop` | System resource usage  |
| `df -h`        | Disk space usage       |
| `free -h`      | Memory usage           |
| `uname -a`     | Kernel/system info     |
| `uptime`       | System uptime          |
| `whoami`       | Current user           |
| `id`           | Show user/group info   |
| `ps aux`       | Show running processes |

---

## 🔄 Package Management (APT)

| Command                  | Description                |
| ------------------------ | -------------------------- |
| `sudo apt update`        | Update package index       |
| `sudo apt upgrade`       | Upgrade installed packages |
| `sudo apt install <pkg>` | Install a package          |
| `sudo apt remove <pkg>`  | Remove a package           |
| `apt list --installed`   | Show installed packages    |

---

## ⚙️ Permissions & Ownership

| Command                 | Description                 |
| ----------------------- | --------------------------- |
| `chmod +x script.sh`    | Make file executable        |
| `chmod 755 filename`    | Set file permissions        |
| `chown user:group file` | Change file owner and group |

---

## 📦 Archive & Compression

| Command                            | Description                  |
| ---------------------------------- | ---------------------------- |
| `tar -czvf archive.tar.gz folder/` | Compress folder to `.tar.gz` |
| `tar -xzvf archive.tar.gz`         | Extract `.tar.gz`            |
| `zip -r file.zip folder/`          | Create ZIP file              |
| `unzip file.zip`                   | Extract ZIP file             |

---

## 🔒 Networking & SSH

| Command                        | Description                     |
| ------------------------------ | ------------------------------- |
| `ip a`                         | Show IP addresses               |
| `ping google.com`              | Check internet connectivity     |
| `curl http://url.com`          | Fetch a webpage                 |
| `wget http://url.com/file.zip` | Download a file                 |
| `ssh user@host`                | SSH into a remote server        |
| `scp file user@host:/path`     | Secure copy file to remote host |

---

## 🧪 Docker Basics

| Command                  | Description             |
| ------------------------ | ----------------------- |
| `docker ps`              | List running containers |
| `docker images`          | List Docker images      |
| `docker run hello-world` | Run a test container    |

---

## 🧬 Git Essentials

| Command               | Description           |
| --------------------- | --------------------- |
| `git status`          | Check repo status     |
| `git add .`           | Stage all changes     |
| `git commit -m "msg"` | Commit with a message |
| `git push`            | Push to remote        |
| `git clone <url>`     | Clone a repository    |

---

## 🔁 Process & Job Management

| Command          | Description                         |
| ---------------- | ----------------------------------- |
| `jobs`           | Show background jobs                |
| `bg %1`          | Resume job in background (job 1)    |
| `fg %1`          | Bring job 1 to foreground           |
| `kill <PID>`     | Kill a process by ID                |
| `killall <name>` | Kill all processes by name          |
| `xkill`          | Click on a window to force close it |

---

## 🕵️‍♂️ Network Tools

| Command               | Description                            |
| --------------------- | -------------------------------------- |
| `netstat -tulnp`      | Show open ports and listening services |
| `ss -tulwn`           | Faster alternative to netstat          |
| `traceroute <host>`   | Trace network route to host            |
| `nslookup google.com` | DNS lookup                             |
| `dig google.com`      | More advanced DNS lookup               |
| `nmap <ip>`           | Scan open ports (requires `nmap`)      |

---

## ⏲️ Scheduled Tasks

| Command      | Description                     |
| ------------ | ------------------------------- |
| `crontab -e` | Edit cron jobs for current user |
| `crontab -l` | List cron jobs                  |
| `@reboot`    | Run job once at startup         |

_Example:_

```bash
# Run script every day at 5 PM
0 17 * * * /home/user/myscript.sh
```

### ✨ Tip:
Want to run a command again? Use `history` and `!<number>` or `Ctrl+R` to reverse search your command history.

---

> Created with ❤️ by Praveen Singh
