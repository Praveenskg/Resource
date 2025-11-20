# 🔐 Environment Variables

Environment variable management and best practices.

## 📚 Table of Contents

- [.env Files](#env-files)
- [Configuration Patterns](#configuration-patterns)
- [Secret Management](#secret-management)

---

## 📄 .env Files

### Basic .env

```bash
# .env
DATABASE_URL=postgresql://user:password@localhost:5432/mydb
API_KEY=your-api-key-here
NODE_ENV=development
PORT=3000
```

### .env.example

```bash
# .env.example
DATABASE_URL=postgresql://user:password@localhost:5432/mydb
API_KEY=your-api-key-here
NODE_ENV=development
PORT=3000
```

### Loading Environment Variables

```javascript
// Node.js with dotenv
require('dotenv').config();

// Access variables
const dbUrl = process.env.DATABASE_URL;
const apiKey = process.env.API_KEY;
```

---

## ⚙️ Configuration Patterns

### Config Object

```javascript
const config = {
  database: {
    url: process.env.DATABASE_URL,
    pool: {
      min: parseInt(process.env.DB_POOL_MIN || '2'),
      max: parseInt(process.env.DB_POOL_MAX || '10'),
    },
  },
  api: {
    key: process.env.API_KEY,
    timeout: parseInt(process.env.API_TIMEOUT || '5000'),
  },
  server: {
    port: parseInt(process.env.PORT || '3000'),
    env: process.env.NODE_ENV || 'development',
  },
};
```

### Validation

```javascript
const requiredEnvVars = ['DATABASE_URL', 'API_KEY'];

requiredEnvVars.forEach(varName => {
  if (!process.env[varName]) {
    throw new Error(`Missing required environment variable: ${varName}`);
  }
});
```

---

## 🔒 Secret Management

### Using dotenv-vault

```bash
# Encrypt .env
npx dotenv-vault encrypt

# Decrypt
npx dotenv-vault decrypt
```

### Environment-Specific Files

```bash
# .env.development
DATABASE_URL=postgresql://localhost:5432/dev_db

# .env.production
DATABASE_URL=postgresql://prod-server:5432/prod_db

# .env.test
DATABASE_URL=postgresql://localhost:5432/test_db
```

---

> Created with ❤️ by Praveen Singh

