# 🔧 Troubleshooting Guide

Common errors, solutions, and debugging tips.

## 📚 Table of Contents

- [Common Errors](#common-errors)
- [Debugging Tips](#debugging-tips)
- [Performance Issues](#performance-issues)

---

## ❌ Common Errors

### Module Not Found

```bash
# Error: Cannot find module 'module-name'
# Solution:
npm install module-name
# or
yarn add module-name
```

### Port Already in Use

```bash
# Error: Port 3000 is already in use
# Solution:
# Find process using port
lsof -i :3000
# Kill process
kill -9 <PID>
# Or use different port
PORT=3001 npm start
```

### Permission Denied

```bash
# Error: EACCES: permission denied
# Solution:
sudo chown -R $(whoami) /path/to/directory
# Or use npm with --unsafe-perm
npm install --unsafe-perm
```

### Memory Issues

```bash
# Error: JavaScript heap out of memory
# Solution:
node --max-old-space-size=4096 script.js
# Or set in package.json
"scripts": {
  "start": "node --max-old-space-size=4096 index.js"
}
```

---

## 🐛 Debugging Tips

### Enable Debug Logging

```bash
# Node.js
DEBUG=* node app.js

# Specific module
DEBUG=express:* node app.js

# Multiple modules
DEBUG=express:*,socket.io:* node app.js
```

### Check Dependencies

```bash
# Check outdated packages
npm outdated

# Check for vulnerabilities
npm audit

# Fix vulnerabilities
npm audit fix
```

---

## ⚡ Performance Issues

### Slow Queries

```javascript
// Add query logging
const start = Date.now();
const result = await db.query('SELECT * FROM users');
console.log(`Query took ${Date.now() - start}ms`);

// Use indexes
CREATE INDEX idx_email ON users(email);

// Limit results
SELECT * FROM users LIMIT 100;
```

### Memory Leaks

```javascript
// Check memory usage
console.log(process.memoryUsage());

// Monitor memory
setInterval(() => {
  const usage = process.memoryUsage();
  console.log({
    heapUsed: (usage.heapUsed / 1024 / 1024).toFixed(2) + ' MB',
    heapTotal: (usage.heapTotal / 1024 / 1024).toFixed(2) + ' MB',
  });
}, 5000);
```

---

> Created with ❤️ by Praveen Singh

