# 🚀 Developer Resources

> A comprehensive collection of resources, commands, configurations, and templates used in daily development life.

[![Resources](https://img.shields.io/badge/resources-38+-blue)](./README.md)
[![Topics](https://img.shields.io/badge/topics-30+-green)](./README.md)
[![License](https://img.shields.io/badge/license-MIT-orange)](./README.md)

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Quick Start](#-quick-start)
- [Directory Structure](#-directory-structure)
  - [Development Tools](#development-tools)
  - [Frameworks & Libraries](#frameworks--libraries)
  - [DevOps & Infrastructure](#devops--infrastructure)
  - [Testing & Quality](#testing--quality)
  - [Configuration & Setup](#configuration--setup)
- [Git Commands](#-git-commands)
- [Terminal Commands](#-terminal-commands)
- [Code Snippets](#-code-snippets)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🎯 Overview

This repository is a curated collection of developer resources covering **38+ topics** with **100+ files** including:

- 📝 **Commands & Cheat Sheets** - Quick reference for daily operations
- ⚙️ **Configuration Files** - Ready-to-use configs for popular tools
- 💻 **Code Snippets** - Reusable templates and patterns
- 🚀 **CI/CD Workflows** - GitHub Actions and GitLab CI examples
- 🐳 **Docker & DevOps** - Containerization and infrastructure patterns
- 🗄️ **Database Queries** - SQL, NoSQL, and ORM patterns
- 🧪 **Testing Frameworks** - Jest, Vitest, Playwright, Cypress
- ☁️ **Cloud Platforms** - AWS, Vercel, Netlify deployment guides
- 🔒 **Security Practices** - Best practices and GPG setup
- ⚡ **Performance** - Debugging, profiling, and optimization guides

---

## ✨ Features

- ✅ **Comprehensive Coverage** - 38+ directories covering all aspects of development
- ✅ **Ready-to-Use** - Copy-paste configurations and templates
- ✅ **Well-Documented** - Each directory includes detailed README files
- ✅ **Practical Examples** - Real-world code snippets and patterns
- ✅ **Best Practices** - Industry-standard approaches and conventions
- ✅ **Cross-Platform** - Resources for Linux, macOS, and Windows
- ✅ **Multiple Languages** - JavaScript, TypeScript, Python, and more
- ✅ **Regular Updates** - Continuously updated with new resources

---

## 🚀 Quick Start

### Browse by Category

- **Need Docker commands?** → [Docker](./Docker/)
- **Setting up CI/CD?** → [CI-CD](./CI-CD/)
- **Database queries?** → [Database](./Database/)
- **Testing setup?** → [Testing](./Testing/)
- **API design?** → [API Design](./API-Design/)
- **Configuration files?** → [Configs](./Configs/)

### Copy Configuration Files

```bash
# Copy Prettier config
cp Configs/.prettierrc.json ./your-project/

# Copy ESLint config
cp Configs/.eslintrc.json ./your-project/

# Copy EditorConfig
cp Configs/.editorconfig ./your-project/
```

### Use Automation Scripts

```bash
# Setup development environment
cd Scripts/
chmod +x setup-dev-env.sh
./setup-dev-env.sh
```

---

## 📁 Directory Structure

### Development Tools

#### 🐳 [Docker](./Docker/)
Docker commands, docker-compose templates, and Dockerfile examples.
- Container management commands
- Docker Compose configuration
- Multi-stage build templates

#### 🗄️ [Database](./Database/)
Database commands and queries for PostgreSQL, MongoDB, MySQL, and more.
- SQL commands and patterns
- PostgreSQL advanced queries
- MongoDB operations
- Backup and restore procedures

#### 📦 [Node](./Node/)
Node.js and package manager commands (npm, pnpm, yarn, bun).
- Package management commands
- package.json templates
- .npmrc configuration examples

#### 🔧 [Scripts](./Scripts/)
Automation scripts for development environment setup.
- Development environment setup
- Tool installation scripts
- Configuration backup utilities

#### 🔐 [SSH](./SSH/)
SSH configuration, key generation, and remote access guides.
- SSH key generation
- SSH config examples
- Port forwarding
- File transfer (SCP, rsync)

#### 🐧 [Linux](./Linux/)
Linux commands cheat sheet for daily operations.
- File and directory operations
- System management
- Network commands
- Package management

---

### Frameworks & Libraries

#### 💻 [Snippets](./Snippets/)
Reusable code snippets and templates.
- React component templates
- Next.js patterns
- TypeScript utility types

#### 🎨 [Web Development](./Web-Development/)
HTML, CSS, and modern web development patterns.
- HTML/CSS snippets
- Tailwind CSS utilities
- Flexbox and Grid examples
- Responsive design patterns

#### 🐍 [Python](./Python/)
Python commands, patterns, and best practices.
- Virtual environment setup
- Package management (pip, poetry)
- Testing with pytest
- Common Python patterns

#### 🔌 [GraphQL](./GraphQL/)
GraphQL queries, mutations, and best practices.
- Query and mutation patterns
- Schema definitions
- Apollo Client examples

#### 🔄 [WebSocket](./WebSocket/)
WebSocket connection patterns and real-time communication.
- Native WebSocket examples
- Socket.io patterns
- Connection management

#### 🗄️ [ORM Patterns](./ORM-Patterns/)
Prisma, TypeORM, and Sequelize patterns.
- Prisma examples
- TypeORM patterns
- Sequelize queries
- Database migrations

#### 🎭 [State Management](./State-Management/)
Redux, Zustand, Context API, and state management patterns.
- Redux Toolkit patterns
- Zustand examples
- Context API patterns

#### 📱 [Mobile Development](./Mobile-Development/)
React Native patterns and mobile development resources.
- React Native components
- Mobile API patterns
- Push notifications

---

### DevOps & Infrastructure

#### ☸️ [DevOps](./DevOps/)
Kubernetes, Terraform, and Infrastructure as Code.
- Kubernetes commands and manifests
- Terraform configurations
- Infrastructure patterns

#### 🚀 [CI-CD](./CI-CD/)
Continuous Integration and Continuous Deployment workflows.
- GitHub Actions workflows
- GitLab CI configurations
- Deployment pipelines

#### ☁️ [Cloud](./Cloud/)
Cloud platform commands and deployment guides.
- AWS CLI commands
- Vercel deployment
- Netlify configuration

#### 📊 [Monitoring & Logging](./Monitoring-Logging/)
Logging patterns, monitoring tools, and observability.
- Winston and Pino logging
- Prometheus and Grafana
- Error tracking (Sentry)
- APM tools

#### 💾 [Caching](./Caching/)
Redis, Memcached, and caching strategies.
- Redis commands and patterns
- Cache invalidation strategies
- CDN configuration

---

### Testing & Quality

#### 🧪 [Testing](./Testing/)
Testing frameworks and patterns (Jest, Vitest, Playwright, Cypress).
- Unit testing configurations
- E2E testing patterns
- Test utilities and mocks
- Coverage setup

#### ⚡ [Performance](./Performance/)
Performance optimization and debugging guides.
- Debugging techniques
- Profiling tools
- Performance metrics

#### 🔒 [Security](./Security/)
Security best practices and GPG setup.
- Authentication patterns
- Input validation
- GPG key management

#### 🔧 [Troubleshooting](./Troubleshooting/)
Common errors, solutions, and debugging tips.
- Common error solutions
- Debugging guides
- Performance troubleshooting

---

### Configuration & Setup

#### ⚙️ [Configs](./Configs/)
Common configuration files for projects.
- .editorconfig
- .prettierrc.json
- .eslintrc.json
- .gitignore

#### 🔐 [Environment Variables](./Environment-Variables/)
Environment variable management and best practices.
- .env file management
- Configuration patterns
- Secret management

#### 💻 [VS Code](./Vs%20Code/)
VS Code settings, extensions, and configuration.
- Editor settings
- Recommended extensions
- Workspace configuration

#### 🎨 [Oh My Posh](./Oh%20My%20Posh/)
Terminal customization with Oh My Posh.
- Theme configuration
- Installation guide

#### 🐚 [Oh my Zsh](./Oh%20my%20Zsh/)
Zsh shell configuration and aliases.
- Custom aliases
- Plugin configuration
- Prompt customization

#### 💾 [PowerShell](./PowerShell/)
PowerShell and Windows Terminal configuration.
- Terminal settings
- Profile configuration

---

### API & Communication

#### 🌐 [API](./API/)
HTTP tools, API testing, and status codes reference.
- curl command examples
- HTTP status codes
- API testing patterns

#### 🎯 [API Design](./API-Design/)
RESTful API design patterns and best practices.
- REST principles
- API versioning strategies
- Rate limiting patterns
- OpenAPI/Swagger documentation

#### 📧 [Email](./Email/)
Email templates, SMTP configuration, and sending patterns.
- HTML/text email templates
- SMTP configuration
- Email service integration

---

### Utilities & Patterns

#### 🔍 [Regex](./Regex/)
Regular expressions and text processing tools.
- Common regex patterns
- sed and awk examples
- Text manipulation commands

#### 📁 [File Handling](./File-Handling/)
File upload, processing, and optimization patterns.
- File upload patterns
- Image processing
- PDF generation

#### 🔍 [Search](./Search/)
Elasticsearch, Algolia, and full-text search patterns.
- Elasticsearch queries
- Algolia integration
- Search optimization

#### 🎨 [UI Components](./UI-Components/)
Form validation, modals, loading states, and error handling patterns.
- Form validation patterns
- Modal/dialog components
- Loading states
- Error handling UI

#### 🌍 [Internationalization](./Internationalization/)
i18n setup, translation management, and locale handling.
- React i18next setup
- Next.js i18n
- Locale handling
- Date/time formatting

#### 📦 [Build Tools](./Build-Tools/)
Webpack, Vite, Rollup configurations and build optimization.
- Webpack configuration
- Vite setup
- Rollup configuration
- Build optimization

---

### Learning Resources

#### 🧮 [Algorithms](./Algorithms/)
Common algorithms, data structures, and problem-solving patterns.
- Sorting and search algorithms
- Data structures examples
- Complexity analysis

#### 🏗️ [Design Patterns](./Design-Patterns/)
Software design patterns and best practices.
- Creational patterns
- Structural patterns
- Behavioral patterns

#### 📝 [Markdown](./Markdown/)
Markdown cheatsheet and documentation patterns.
- Markdown syntax reference
- Documentation templates
- JSDoc examples

#### 📋 [Cheat-Sheets](./Cheat-Sheets/)
Quick reference materials for common tasks.

#### 📁 [Templates](./Templates/)
Project starter templates and boilerplates.

---

## 🔧 Git Commands

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

# Create an empty commit
git commit --allow-empty -m "Your commit message"
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

---

## 💻 Terminal Commands

```bash
# Start the GPG agent daemon
gpg-agent --daemon

# Move a folder to another directory
mv FolderName directory
```

For more terminal commands, see the [Linux](./Linux/) directory.

---

## 📝 Code Snippets

### React/JavaScript

```js
// Generate empty array for rendering components
Array.from({length:10}).map((_,i)=><Component key={i}/>);
```

For more code snippets and templates, check the [Snippets](./Snippets/) directory.

---

## 🤝 Contributing

Contributions are welcome! This repository is meant to be a living collection of developer resources.

### How to Contribute

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/amazing-resource`)
3. **Add your resources** following the existing structure
4. **Update documentation** if needed
5. **Commit your changes** (`git commit -m 'Add amazing resource'`)
6. **Push to the branch** (`git push origin feature/amazing-resource`)
7. **Open a Pull Request**

### Contribution Guidelines

- Follow the existing directory structure
- Include README.md files with clear documentation
- Add practical examples and use cases
- Keep code snippets concise and well-commented
- Update the main README.md if adding new directories

---

## 📄 License

This repository is open source and available for personal use.

---

## 📊 Repository Statistics

- **Total Directories**: 38+
- **Total Files**: 100+
- **Topics Covered**: 30+
- **Languages**: JavaScript, TypeScript, Python, Shell, YAML, JSON, Markdown
- **Last Updated**: 2025

---

## 🙏 Acknowledgments

Special thanks to all contributors and the open-source community for inspiration and best practices.

---

> Created with ❤️ by Praveen Singh
