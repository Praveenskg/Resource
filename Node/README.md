# 📦 Node.js & Package Managers Cheat Sheet

## 📚 Package Managers

### npm (Node Package Manager)

| Command | Description |
|---------|-------------|
| `npm init` | Initialize new package.json |
| `npm init -y` | Initialize with default values |
| `npm install` | Install dependencies from package.json |
| `npm install <package>` | Install package |
| `npm install <package> --save` | Install and add to dependencies |
| `npm install <package> --save-dev` | Install and add to devDependencies |
| `npm install <package> -g` | Install globally |
| `npm install <package>@version` | Install specific version |
| `npm install <package>@latest` | Install latest version |
| `npm uninstall <package>` | Uninstall package |
| `npm update` | Update all packages |
| `npm update <package>` | Update specific package |
| `npm outdated` | Check for outdated packages |
| `npm list` | List installed packages |
| `npm list --depth=0` | List top-level packages only |
| `npm list -g` | List globally installed packages |
| `npm view <package>` | View package info |
| `npm view <package> versions` | View all versions |
| `npm search <keyword>` | Search packages |
| `npm run <script>` | Run script from package.json |
| `npm test` | Run tests |
| `npm publish` | Publish package to npm |
| `npm cache clean` | Clean npm cache |
| `npm audit` | Audit packages for vulnerabilities |
| `npm audit fix` | Fix vulnerabilities automatically |

### pnpm (Fast, disk space efficient)

| Command | Description |
|---------|-------------|
| `pnpm init` | Initialize new package.json |
| `pnpm install` | Install dependencies |
| `pnpm add <package>` | Add package |
| `pnpm add <package> -D` | Add as dev dependency |
| `pnpm add <package> -g` | Add globally |
| `pnpm remove <package>` | Remove package |
| `pnpm update` | Update packages |
| `pnpm list` | List packages |
| `pnpm run <script>` | Run script |
| `pnpm exec <command>` | Execute command |

### yarn (Fast, reliable)

| Command | Description |
|---------|-------------|
| `yarn init` | Initialize new package.json |
| `yarn install` | Install dependencies |
| `yarn add <package>` | Add package |
| `yarn add <package> -D` | Add as dev dependency |
| `yarn add <package> -g` | Add globally |
| `yarn remove <package>` | Remove package |
| `yarn upgrade` | Upgrade packages |
| `yarn list` | List packages |
| `yarn run <script>` | Run script |
| `yarn why <package>` | Show why package is installed |

### bun (Ultra-fast)

| Command | Description |
|---------|-------------|
| `bun init` | Initialize new package.json |
| `bun install` | Install dependencies |
| `bun add <package>` | Add package |
| `bun add <package> -d` | Add as dev dependency |
| `bun remove <package>` | Remove package |
| `bun update` | Update packages |
| `bun run <script>` | Run script |

## 🔧 Common npm Scripts

```json
{
  "scripts": {
    "start": "node index.js",
    "dev": "nodemon index.js",
    "build": "tsc",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage",
    "lint": "eslint .",
    "lint:fix": "eslint . --fix",
    "format": "prettier --write .",
    "format:check": "prettier --check .",
    "type-check": "tsc --noEmit",
    "clean": "rm -rf dist node_modules",
    "prepublishOnly": "npm run build && npm test"
  }
}
```

## 📋 package.json Fields

```json
{
  "name": "package-name",
  "version": "1.0.0",
  "description": "Package description",
  "main": "index.js",
  "type": "module",
  "scripts": {
    "start": "node index.js"
  },
  "keywords": ["keyword1", "keyword2"],
  "author": "Your Name",
  "license": "MIT",
  "dependencies": {
    "express": "^4.18.0"
  },
  "devDependencies": {
    "typescript": "^5.0.0"
  },
  "peerDependencies": {
    "react": ">=16.8.0"
  },
  "optionalDependencies": {
    "optional-package": "^1.0.0"
  },
  "engines": {
    "node": ">=18.0.0",
    "npm": ">=9.0.0"
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/user/repo.git"
  },
  "bugs": {
    "url": "https://github.com/user/repo/issues"
  },
  "homepage": "https://github.com/user/repo#readme"
}
```

## 🚀 Node.js Commands

| Command | Description |
|---------|-------------|
| `node <file>` | Run JavaScript file |
| `node --version` | Check Node.js version |
| `node --inspect <file>` | Run with debugger |
| `node --trace-warnings <file>` | Show stack traces for warnings |
| `node --max-old-space-size=4096 <file>` | Set max memory |

## 🔍 Useful Tools

### nvm (Node Version Manager)

```bash
# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# List available versions
nvm list-remote

# Install Node.js version
nvm install 18.0.0
nvm install --lts

# Use specific version
nvm use 18.0.0
nvm use --lts

# Set default version
nvm alias default 18.0.0

# List installed versions
nvm list

# Current version
nvm current
```

### npx (Execute packages)

```bash
# Execute package without installing
npx create-react-app my-app
npx eslint .
npx prettier --write .

# Execute specific version
npx package@1.0.0

# Execute with node_modules
npx --yes package-name
```

## 📦 Package Management Best Practices

### Version Ranges

- `^1.2.3` - Compatible with 1.x.x (caret)
- `~1.2.3` - Compatible with 1.2.x (tilde)
- `1.2.3` - Exact version
- `>=1.2.3` - Greater than or equal
- `<=1.2.3` - Less than or equal
- `*` - Any version
- `latest` - Latest version

### Lock Files

- `package-lock.json` - npm lock file
- `yarn.lock` - Yarn lock file
- `pnpm-lock.yaml` - pnpm lock file
- `bun.lockb` - Bun lock file

**Always commit lock files to version control!**

### .npmrc Configuration

```ini
# .npmrc file
registry=https://registry.npmjs.org/
save-exact=true
package-lock=true
engine-strict=true
```

## 🛠️ Common Workflows

### Starting a New Project

```bash
# Initialize project
npm init -y

# Install dependencies
npm install express cors dotenv

# Install dev dependencies
npm install --save-dev typescript @types/node @types/express

# Create .gitignore
echo "node_modules/" >> .gitignore
echo ".env" >> .gitignore
```

### Updating Dependencies

```bash
# Check outdated packages
npm outdated

# Update all packages
npm update

# Update specific package
npm install package@latest

# Update to latest major version (use with caution)
npm install package@* --save
```

### Cleaning Up

```bash
# Remove node_modules and reinstall
rm -rf node_modules package-lock.json
npm install

# Clean npm cache
npm cache clean --force

# Remove unused packages
npm prune
```

---

> Created with ❤️ by Praveen Singh

