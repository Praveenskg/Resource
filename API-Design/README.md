# 🎯 API Design Best Practices

RESTful API design patterns and best practices.

## 📚 Table of Contents

- [REST Principles](#rest-principles)
- [API Versioning](#api-versioning)
- [Rate Limiting](#rate-limiting)
- [Documentation](#documentation)

---

## 🌐 REST Principles

### Resource Naming

```javascript
// Good
GET /api/users
GET /api/users/123
POST /api/users
PUT /api/users/123
DELETE /api/users/123

// Bad
GET /api/getUsers
POST /api/createUser
```

### HTTP Methods

```javascript
// GET - Retrieve resources
GET /api/users

// POST - Create resource
POST /api/users
Body: { name: "John", email: "john@example.com" }

// PUT - Update entire resource
PUT /api/users/123
Body: { name: "John Updated", email: "john@example.com" }

// PATCH - Partial update
PATCH /api/users/123
Body: { name: "John Updated" }

// DELETE - Delete resource
DELETE /api/users/123
```

### Status Codes

```javascript
// 200 OK - Success
res.status(200).json(data);

// 201 Created - Resource created
res.status(201).json(createdResource);

// 204 No Content - Success with no body
res.status(204).send();

// 400 Bad Request - Invalid input
res.status(400).json({ error: 'Invalid input' });

// 401 Unauthorized - Authentication required
res.status(401).json({ error: 'Unauthorized' });

// 404 Not Found - Resource not found
res.status(404).json({ error: 'Not found' });

// 500 Internal Server Error
res.status(500).json({ error: 'Internal server error' });
```

---

## 🔢 API Versioning

### URL Versioning

```javascript
// Version in URL
GET /api/v1/users
GET /api/v2/users
```

### Header Versioning

```javascript
// Version in header
GET /api/users
Headers: { 'API-Version': 'v1' }
```

---

## 🚦 Rate Limiting

### Express Rate Limit

```javascript
const rateLimit = require('express-rate-limit');

const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 100, // Limit each IP to 100 requests per windowMs
});

app.use('/api/', limiter);
```

---

## 📖 Documentation

### OpenAPI/Swagger

```yaml
openapi: 3.0.0
info:
  title: User API
  version: 1.0.0
paths:
  /users:
    get:
      summary: Get all users
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: array
                items:
                  $ref: '#/components/schemas/User'
```

---

> Created with ❤️ by Praveen Singh

