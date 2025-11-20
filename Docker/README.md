# 🐳 Docker Commands Cheat Sheet

## 📦 Container Management

| Command | Description |
|---------|-------------|
| `docker ps` | List running containers |
| `docker ps -a` | List all containers (including stopped) |
| `docker ps -l` | List last created container |
| `docker ps -q` | List only container IDs |
| `docker start <container>` | Start a stopped container |
| `docker stop <container>` | Stop a running container |
| `docker restart <container>` | Restart a container |
| `docker pause <container>` | Pause a container |
| `docker unpause <container>` | Unpause a container |
| `docker rm <container>` | Remove a container |
| `docker rm -f <container>` | Force remove a running container |
| `docker rm $(docker ps -aq)` | Remove all stopped containers |
| `docker exec -it <container> bash` | Execute command in running container |
| `docker exec -it <container> sh` | Execute shell in container |
| `docker logs <container>` | View container logs |
| `docker logs -f <container>` | Follow container logs |
| `docker logs --tail 100 <container>` | View last 100 log lines |
| `docker inspect <container>` | Inspect container details |
| `docker top <container>` | Show running processes in container |
| `docker stats` | Show container resource usage |
| `docker stats <container>` | Show stats for specific container |

## 🖼️ Image Management

| Command | Description |
|---------|-------------|
| `docker images` | List all images |
| `docker images -a` | List all images (including intermediate) |
| `docker pull <image>` | Pull image from registry |
| `docker push <image>` | Push image to registry |
| `docker build -t <name> .` | Build image from Dockerfile |
| `docker build -t <name> -f <dockerfile> .` | Build with custom Dockerfile |
| `docker rmi <image>` | Remove an image |
| `docker rmi -f <image>` | Force remove image |
| `docker rmi $(docker images -q)` | Remove all images |
| `docker image prune` | Remove unused images |
| `docker image prune -a` | Remove all unused images |
| `docker tag <source> <target>` | Tag an image |
| `docker history <image>` | Show image history |
| `docker save -o <file> <image>` | Save image to tar file |
| `docker load -i <file>` | Load image from tar file |

## 🌐 Network Management

| Command | Description |
|---------|-------------|
| `docker network ls` | List all networks |
| `docker network create <name>` | Create a network |
| `docker network rm <name>` | Remove a network |
| `docker network inspect <name>` | Inspect network details |
| `docker network connect <net> <container>` | Connect container to network |
| `docker network disconnect <net> <container>` | Disconnect container from network |
| `docker network prune` | Remove unused networks |

## 💾 Volume Management

| Command | Description |
|---------|-------------|
| `docker volume ls` | List all volumes |
| `docker volume create <name>` | Create a volume |
| `docker volume rm <name>` | Remove a volume |
| `docker volume inspect <name>` | Inspect volume details |
| `docker volume prune` | Remove unused volumes |

## 🧹 Cleanup Commands

| Command | Description |
|---------|-------------|
| `docker system df` | Show disk usage |
| `docker system prune` | Remove unused data |
| `docker system prune -a` | Remove all unused data (including images) |
| `docker system prune -a --volumes` | Remove everything including volumes |
| `docker container prune` | Remove all stopped containers |
| `docker image prune` | Remove unused images |
| `docker volume prune` | Remove unused volumes |
| `docker network prune` | Remove unused networks |

## 🚀 Running Containers

| Command | Description |
|---------|-------------|
| `docker run <image>` | Run container from image |
| `docker run -d <image>` | Run container in detached mode |
| `docker run -it <image>` | Run container interactively |
| `docker run -p <host>:<container> <image>` | Map port |
| `docker run -v <host>:<container> <image>` | Mount volume |
| `docker run --name <name> <image>` | Run with custom name |
| `docker run --rm <image>` | Auto-remove container when stopped |
| `docker run -e VAR=value <image>` | Set environment variable |
| `docker run --env-file .env <image>` | Load env vars from file |
| `docker run --network <net> <image>` | Run on specific network |
| `docker run --link <container> <image>` | Link containers |

## 📝 Docker Compose

| Command | Description |
|---------|-------------|
| `docker-compose up` | Start services |
| `docker-compose up -d` | Start services in detached mode |
| `docker-compose down` | Stop and remove containers |
| `docker-compose down -v` | Stop and remove containers with volumes |
| `docker-compose ps` | List running services |
| `docker-compose logs` | View logs |
| `docker-compose logs -f` | Follow logs |
| `docker-compose logs <service>` | View logs for specific service |
| `docker-compose build` | Build images |
| `docker-compose build --no-cache` | Build without cache |
| `docker-compose restart` | Restart services |
| `docker-compose stop` | Stop services |
| `docker-compose start` | Start services |
| `docker-compose exec <service> <cmd>` | Execute command in service |
| `docker-compose pull` | Pull latest images |
| `docker-compose config` | Validate and view config |

## 🔍 Useful Aliases

Add these to your shell config:

```bash
# Container shortcuts
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dpsa='docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dex='docker exec -it'
alias dlog='docker logs -f'
alias dstop='docker stop $(docker ps -q)'
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q -f dangling=true)'

# Cleanup shortcuts
alias dclean='docker system prune -af --volumes'
alias dclean-images='docker image prune -af'
alias dclean-containers='docker container prune -f'
alias dclean-volumes='docker volume prune -f'

# Docker Compose shortcuts
alias dcup='docker-compose up -d'
alias dcdown='docker-compose down'
alias dclog='docker-compose logs -f'
alias dcrestart='docker-compose restart'
alias dcbuild='docker-compose build --no-cache'
```

## 🎯 Common Use Cases

### Run a web server
```bash
docker run -d -p 8080:80 nginx
```

### Run with volume mount
```bash
docker run -d -v /host/path:/container/path <image>
```

### Run with environment variables
```bash
docker run -d -e DATABASE_URL=postgres://... <image>
```

### Build and tag image
```bash
docker build -t myapp:latest -t myapp:v1.0.0 .
```

### Copy files to/from container
```bash
docker cp <container>:/path/to/file ./local/path
docker cp ./local/file <container>:/path/to/dest
```

### View container resource usage
```bash
docker stats --no-stream
```

### Export/Import container
```bash
docker export <container> > container.tar
docker import container.tar <image:tag>
```

---

> Created with ❤️ by Praveen Singh

