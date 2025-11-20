# 🔒 Security Best Practices

## 🔐 Authentication & Authorization

### Password Security

```javascript
// Use bcrypt for password hashing
const bcrypt = require('bcrypt');

// Hash password
const hash = await bcrypt.hash(password, 10);

// Verify password
const isValid = await bcrypt.compare(password, hash);
```

### JWT Tokens

```javascript
// Generate token
const token = jwt.sign(
  { userId: user.id },
  process.env.JWT_SECRET,
  { expiresIn: '24h' }
);

// Verify token
const decoded = jwt.verify(token, process.env.JWT_SECRET);
```

## 🛡️ Input Validation

### Sanitization

```javascript
// Sanitize HTML
const sanitize = require('sanitize-html');

const clean = sanitize(dirty, {
  allowedTags: ['b', 'i', 'em', 'strong'],
});
```

### Validation

```javascript
// Use Zod for validation
const z = require('zod');

const schema = z.object({
  email: z.string().email(),
  password: z.string().min(8),
});
```

## 🔐 Secrets Management

### Environment Variables

```bash
# Never commit .env files
# Use .env.example instead

# .env.example
DATABASE_URL=postgresql://...
JWT_SECRET=your-secret-key
API_KEY=your-api-key
```

### Secure Storage

```javascript
// Use secure storage for secrets
// Never log secrets
console.log('Secret:', process.env.SECRET); // ❌ Bad
```

## 🚨 Security Headers

```javascript
// Express security headers
const helmet = require('helmet');
app.use(helmet());

// Custom headers
app.use((req, res, next) => {
  res.setHeader('X-Content-Type-Options', 'nosniff');
  res.setHeader('X-Frame-Options', 'DENY');
  res.setHeader('X-XSS-Protection', '1; mode=block');
  next();
});
```

---

> Created with ❤️ by Praveen Singh

