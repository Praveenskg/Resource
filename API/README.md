# 🚀 HTTP Status Codes Complete Guide

A comprehensive reference guide to HTTP status codes with detailed explanations, real-world examples, and best practices for API development.

## 📋 Table of Contents

- [Introduction](#introduction)
- [1xx Informational Responses](#1xx-informational-responses)
- [2xx Success Responses](#2xx-success-responses)
- [3xx Redirection Responses](#3xx-redirection-responses)
- [4xx Client Error Responses](#4xx-client-error-responses)
- [5xx Server Error Responses](#5xx-server-error-responses)
- [Status Code Categories Overview](#status-code-categories-overview)
- [Best Practices](#best-practices)
- [Common Use Cases](#common-use-cases)
- [Implementation Examples](#implementation-examples)
- [Quick Reference](#quick-reference)

---

## 🎯 Introduction

HTTP status codes are three-digit numbers returned by servers to indicate the result of a client's request. They are grouped into five classes:

- **1xx**: Informational responses
- **2xx**: Successful responses
- **3xx**: Redirection responses
- **4xx**: Client error responses
- **5xx**: Server error responses

Understanding and using the correct status codes is crucial for building robust, user-friendly APIs.

---

## 📡 1xx Informational Responses

These codes indicate that the server has received the request and is continuing to process it.

### 100 Continue
**Description**: The server has received the request headers and the client should proceed to send the request body.

**Use Case**: Large file uploads where the client wants to check if the server is willing to accept the data before sending it.

**Example**:
```http
Client: POST /upload HTTP/1.1
        Expect: 100-continue
        Content-Length: 1000000

Server: HTTP/1.1 100 Continue

Client: [sends 1MB of data]
```

### 101 Switching Protocols
**Description**: The server is switching protocols as requested by the client.

**Use Case**: WebSocket upgrades, HTTP to HTTPS redirects.

**Example**:
```http
Client: GET /chat HTTP/1.1
        Upgrade: websocket
        Connection: Upgrade

Server: HTTP/1.1 101 Switching Protocols
        Upgrade: websocket
        Connection: Upgrade
```

### 102 Processing
**Description**: The server has received and is processing the request, but no response is available yet.

**Use Case**: Long-running operations like file processing or complex calculations.

### 103 Early Hints
**Description**: Used to return some response headers before the final HTTP message.

**Use Case**: Performance optimization for resource hints.

---

## ✅ 2xx Success Responses

These codes indicate that the client's request was successfully received, understood, and accepted.

### 200 OK
**Description**: The request has succeeded.

**Use Case**: Standard success response for GET, PUT, PATCH requests.

**Examples**:
```javascript
// GET request success
app.get('/users', (req, res) => {
  res.status(200).json(users);
});

// PUT request success
app.put('/users/:id', (req, res) => {
  const updatedUser = updateUser(req.params.id, req.body);
  res.status(200).json(updatedUser);
});
```

### 201 Created
**Description**: The request has been fulfilled and a new resource has been created.

**Use Case**: POST requests that create new resources.

**Example**:
```javascript
app.post('/users', (req, res) => {
  const newUser = createUser(req.body);
  res.status(201)
     .location(`/users/${newUser.id}`)
     .json(newUser);
});
```

### 202 Accepted
**Description**: The request has been accepted for processing, but the processing has not been completed.

**Use Case**: Asynchronous operations, job queues.

**Example**:
```javascript
app.post('/reports/generate', (req, res) => {
  const jobId = queueReportGeneration(req.body);
  res.status(202)
     .header('Location', `/jobs/${jobId}`)
     .json({ jobId, status: 'processing' });
});
```

### 203 Non-Authoritative Information
**Description**: The returned metadata is not the definitive set from the origin server.

**Use Case**: Proxy servers modifying response metadata.

### 204 No Content
**Description**: The server has successfully fulfilled the request and there is no additional content to send.

**Use Case**: DELETE operations, PUT operations that don't return data.

**Example**:
```javascript
app.delete('/users/:id', (req, res) => {
  deleteUser(req.params.id);
  res.status(204).send(); // No body returned
});
```

### 205 Reset Content
**Description**: The client should reset the document view (clear forms, etc.).

**Use Case**: Form submissions where the client should clear the form after success.

### 206 Partial Content
**Description**: The server is delivering only part of the resource due to a range header.

**Use Case**: Resume downloads, video streaming.

**Example**:
```http
Client: GET /video.mp4 HTTP/1.1
        Range: bytes=0-1023

Server: HTTP/1.1 206 Partial Content
        Content-Range: bytes 0-1023/1048576
        Content-Length: 1024
```

### 207 Multi-Status
**Description**: Multiple status codes for different parts of a batch operation.

**Use Case**: WebDAV operations affecting multiple resources.

### 208 Already Reported
**Description**: Members of a DAV binding have already been enumerated.

**Use Case**: WebDAV to avoid duplicate entries.

### 226 IM Used
**Description**: The server has fulfilled a GET request for the resource using instance manipulations.

**Use Case**: Delta encoding in HTTP.

---

## 🔄 3xx Redirection Responses

These codes indicate that further action needs to be taken by the client to complete the request.

### 300 Multiple Choices
**Description**: Multiple options for the resource that the client may follow.

**Use Case**: Content negotiation when multiple representations exist.

### 301 Moved Permanently
**Description**: The resource has been permanently moved to a new URL.

**Use Case**: Permanent URL changes, SEO-friendly redirects.

**Example**:
```javascript
app.get('/old-path', (req, res) => {
  res.status(301).redirect('/new-path');
});
```

### 302 Found
**Description**: The resource has been temporarily moved to a different URL.

**Use Case**: Temporary redirects, maintenance pages.

**Note**: Historically allowed method changes, but use 303 or 307 for clarity.

### 303 See Other
**Description**: The response can be found under a different URI and should be retrieved using a GET method.

**Use Case**: Redirect after POST/PUT/PATCH operations.

**Example**:
```javascript
app.post('/login', (req, res) => {
  // After successful login
  res.status(303).redirect('/dashboard');
});
```

### 304 Not Modified
**Description**: The resource has not been modified since the version specified by the request headers.

**Use Case**: Conditional requests, caching.

**Example**:
```javascript
app.get('/users', (req, res) => {
  const lastModified = getUsersLastModified();
  if (req.get('If-Modified-Since') === lastModified) {
    return res.status(304).send();
  }
  res.json(users);
});
```

### 305 Use Proxy (Deprecated)
**Description**: The requested resource is available only through a proxy.

**Use Case**: Deprecated - use 306 or other codes instead.

### 306 Unused (Reserved)
**Description**: This status code is no longer used.

### 307 Temporary Redirect
**Description**: The resource resides temporarily under a different URL, and the client should continue to use the original URL.

**Use Case**: Temporary redirects that preserve the HTTP method.

**Example**:
```javascript
app.get('/api/v1/*', (req, res) => {
  // Temporary API versioning
  res.status(307).redirect(`/api/v2${req.path}`);
});
```

### 308 Permanent Redirect
**Description**: The resource has been permanently moved to a different URL, and the client should use the new URL for future requests.

**Use Case**: Permanent redirects that preserve the HTTP method.

---

## ❌ 4xx Client Error Responses

These codes indicate that there was an error on the client's side.

### 400 Bad Request
**Description**: The server cannot process the request due to a client error.

**Use Case**: Malformed request syntax, invalid JSON, missing required fields.

**Example**:
```javascript
app.post('/users', (req, res) => {
  const errors = validateUser(req.body);
  if (errors.length > 0) {
    return res.status(400).json({
      error: 'Bad Request',
      details: errors
    });
  }
});
```

### 401 Unauthorized
**Description**: The request lacks valid authentication credentials.

**Use Case**: Missing or invalid authentication tokens, API keys.

**Example**:
```javascript
app.get('/profile', authenticate, (req, res) => {
  if (!req.user) {
    return res.status(401).json({
      error: 'Unauthorized',
      message: 'Valid authentication required'
    });
  }
});
```

### 402 Payment Required
**Description**: Reserved for future use - indicates that payment is required.

**Use Case**: Monetized APIs, premium features.

### 403 Forbidden
**Description**: The server understands the request but refuses to authorize it.

**Use Case**: Insufficient permissions, banned users, admin-only resources.

**Example**:
```javascript
app.get('/admin/users', requireAdmin, (req, res) => {
  if (!req.user.isAdmin) {
    return res.status(403).json({
      error: 'Forbidden',
      message: 'Admin access required'
    });
  }
});
```

### 404 Not Found
**Description**: The server can't find the requested resource.

**Use Case**: Invalid URLs, deleted resources, non-existent endpoints.

**Example**:
```javascript
app.get('/users/:id', (req, res) => {
  const user = findUser(req.params.id);
  if (!user) {
    return res.status(404).json({
      error: 'Not Found',
      message: 'User not found'
    });
  }
});
```

### 405 Method Not Allowed
**Description**: The method received in the request-line is known by the origin server but not supported by the target resource.

**Use Case**: Wrong HTTP method (POST instead of GET, etc.).

**Example**:
```javascript
app.all('/users/:id', (req, res) => {
  if (!['GET', 'PUT', 'DELETE'].includes(req.method)) {
    res.set('Allow', 'GET, PUT, DELETE');
    return res.status(405).json({
      error: 'Method Not Allowed'
    });
  }
});
```

### 406 Not Acceptable
**Description**: The server cannot produce a response matching the list of acceptable values defined in the request's proactive content negotiation headers.

**Use Case**: Content negotiation failures (Accept header).

### 407 Proxy Authentication Required
**Description**: The client must authenticate with the proxy.

**Use Case**: Proxy servers requiring authentication.

### 408 Request Timeout
**Description**: The server timed out waiting for the request.

**Use Case**: Slow clients, network issues.

### 409 Conflict
**Description**: The request conflicts with the current state of the server.

**Use Case**: Resource already exists, version conflicts.

**Example**:
```javascript
app.post('/users', (req, res) => {
  if (findUserByEmail(req.body.email)) {
    return res.status(409).json({
      error: 'Conflict',
      message: 'User with this email already exists'
    });
  }
});
```

### 410 Gone
**Description**: The target resource is no longer available at the origin server.

**Use Case**: Permanently deleted resources, deprecated API endpoints.

### 411 Length Required
**Description**: The server refuses to accept the request without a defined Content-Length.

**Use Case**: APIs requiring explicit content length.

### 412 Precondition Failed
**Description**: One or more conditions given in the request header fields evaluated to false.

**Use Case**: Conditional requests with If-Match, If-Unmodified-Since headers.

### 413 Payload Too Large
**Description**: The server is refusing to process a request because the request payload is larger than the server is willing or able to process.

**Use Case**: File upload size limits.

**Example**:
```javascript
app.use(express.json({ limit: '10mb' }));

app.use((err, req, res, next) => {
  if (err.type === 'entity.too.large') {
    return res.status(413).json({
      error: 'Payload Too Large',
      message: 'Request body exceeds 10MB limit'
    });
  }
});
```

### 414 URI Too Long
**Description**: The server is refusing to service the request because the request-target is longer than the server is willing to interpret.

**Use Case**: Extremely long URLs or query parameters.

### 415 Unsupported Media Type
**Description**: The server is refusing to service the request because the entity of the request is in a format not supported by the requested resource.

**Use Case**: Wrong Content-Type header.

**Example**:
```javascript
app.post('/upload', (req, res) => {
  if (!req.is('application/json')) {
    return res.status(415).json({
      error: 'Unsupported Media Type',
      message: 'Content-Type must be application/json'
    });
  }
});
```

### 416 Range Not Satisfiable
**Description**: The range specified by the Range header field in the request can't be fulfilled.

**Use Case**: Invalid range requests for partial content.

### 417 Expectation Failed
**Description**: The expectation given in the request's Expect header field couldn't be met.

**Use Case**: When client expects certain behavior that server can't provide.

### 418 I'm a teapot (RFC 2324)
**Description**: The server refuses the attempt to brew coffee with a teapot.

**Use Case**: April Fools' joke - not used in production APIs.

### 421 Misdirected Request
**Description**: The request was directed at a server that is not able to produce a response.

**Use Case**: Server configuration issues.

### 422 Unprocessable Entity
**Description**: The server understands the content type of the request entity and the syntax of the request entity is correct but was unable to process the contained instructions.

**Use Case**: Validation errors, business logic violations.

**Example**:
```javascript
app.post('/users', validateUser, (req, res) => {
  const validationErrors = validate(req.body);
  if (validationErrors.length > 0) {
    return res.status(422).json({
      error: 'Unprocessable Entity',
      validationErrors
    });
  }
});
```

### 423 Locked
**Description**: The source or destination resource of a method is locked.

**Use Case**: WebDAV locked resources.

### 424 Failed Dependency
**Description**: The method could not be performed on the resource because the requested action depended on another action and that action failed.

**Use Case**: WebDAV operations with dependencies.

### 425 Too Early
**Description**: The server is unwilling to risk processing a request that might be replayed.

**Use Case**: Protection against replay attacks.

### 426 Upgrade Required
**Description**: The server refuses to perform the request using the current protocol but might be willing to do so after the client upgrades to a different protocol.

**Use Case**: HTTP to HTTPS upgrades, protocol version requirements.

**Example**:
```javascript
app.use((req, res, next) => {
  if (req.protocol !== 'https') {
    res.status(426).json({
      error: 'Upgrade Required',
      message: 'HTTPS is required'
    });
  }
});
```

### 428 Precondition Required
**Description**: The origin server requires the request to be conditional.

**Use Case**: APIs requiring conditional headers.

### 429 Too Many Requests
**Description**: The user has sent too many requests in a given amount of time.

**Use Case**: Rate limiting, API throttling.

**Example**:
```javascript
const rateLimit = require('express-rate-limit');

const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 100, // limit each IP to 100 requests per windowMs
  message: {
    error: 'Too Many Requests',
    message: 'Rate limit exceeded. Try again later.'
  },
  standardHeaders: true,
  legacyHeaders: false,
});

app.use('/api/', limiter);
```

### 431 Request Header Fields Too Large
**Description**: The server is unwilling to process the request because its header fields are too large.

**Use Case**: Headers exceeding server limits.

### 451 Unavailable For Legal Reasons
**Description**: The server is denying access to the resource as a consequence of a legal demand.

**Use Case**: Censored content, DMCA takedowns.

---

## 🚨 5xx Server Error Responses

These codes indicate that the server failed to fulfill a valid request.

### 500 Internal Server Error
**Description**: The server has encountered a situation it doesn't know how to handle.

**Use Case**: Unexpected errors, database failures, unhandled exceptions.

**Example**:
```javascript
app.use((err, req, res, next) => {
  console.error('Unhandled error:', err);
  res.status(500).json({
    error: 'Internal Server Error',
    message: 'Something went wrong on our end'
  });
});
```

### 501 Not Implemented
**Description**: The request method is not supported by the server and cannot be handled.

**Use Case**: Unsupported HTTP methods, unimplemented features.

### 502 Bad Gateway
**Description**: The server, while working as a gateway to get a response needed to handle the request, got an invalid response.

**Use Case**: Upstream server errors, proxy issues.

### 503 Service Unavailable
**Description**: The server is not ready to handle the request.

**Use Case**: Maintenance mode, server overload, temporary outages.

**Example**:
```javascript
app.use((req, res, next) => {
  if (process.env.MAINTENANCE_MODE === 'true') {
    return res.status(503).json({
      error: 'Service Unavailable',
      message: 'Server is under maintenance',
      retryAfter: 3600 // seconds
    });
  }
  next();
});
```

### 504 Gateway Timeout
**Description**: The server is acting as a gateway and cannot get a response in time.

**Use Case**: Upstream server timeouts, slow external services.

### 505 HTTP Version Not Supported
**Description**: The HTTP version used in the request is not supported by the server.

**Use Case**: Outdated HTTP versions.

### 506 Variant Also Negotiates
**Description**: The server has an internal configuration error.

**Use Case**: Content negotiation configuration issues.

### 507 Insufficient Storage
**Description**: The method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request.

**Use Case**: WebDAV storage limits, disk space issues.

### 508 Loop Detected
**Description**: The server terminated an operation because it encountered an infinite loop.

**Use Case**: WebDAV infinite loops.

### 510 Not Extended
**Description**: Further extensions to the request are required for the server to fulfill it.

**Use Case**: Policy requirements not met.

### 511 Network Authentication Required
**Description**: The client needs to authenticate to gain network access.

**Use Case**: Captive portals, network access control.

---

## 📊 Status Code Categories Overview

| Category | Description   | Common Codes  | HTTP Semantics                       |
| -------- | ------------- | ------------- | ------------------------------------ |
| **1xx**  | Informational | 100, 101, 102 | Request received, continuing process |
| **2xx**  | Success       | 200, 201, 204 | Request successfully processed       |
| **3xx**  | Redirection   | 301, 302, 304 | Further action needed                |
| **4xx**  | Client Error  | 400, 401, 404 | Client-side error                    |
| **5xx**  | Server Error  | 500, 502, 503 | Server-side error                    |

---

## 🎯 Best Practices

### 1. Use Appropriate Status Codes
```javascript
// ✅ Good - Use specific codes
app.post('/users', (req, res) => {
  if (!req.body.email) return res.status(400).json({ error: 'Email required' });
  const user = createUser(req.body);
  res.status(201).json(user);
});

// ❌ Bad - Always return 200
app.post('/users', (req, res) => {
  if (!req.body.email) return res.status(200).json({ error: 'Email required' });
  const user = createUser(req.body);
  res.status(200).json(user);
});
```

### 2. Include Meaningful Error Messages
```javascript
// ✅ Good - Detailed error response
res.status(422).json({
  error: 'Validation Failed',
  details: [
    { field: 'email', message: 'Invalid email format' },
    { field: 'password', message: 'Password too weak' }
  ]
});

// ❌ Bad - Generic error
res.status(400).json({ error: 'Bad Request' });
```

### 3. Handle All Error Cases
```javascript
app.get('/users/:id', (req, res) => {
  try {
    const user = getUser(req.params.id);
    if (!user) {
      return res.status(404).json({ error: 'User not found' });
    }
    res.json(user);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});
```

### 4. Use Proper HTTP Methods and Status Codes Together
```javascript
// RESTful API conventions
GET    /users     -> 200 (OK)
GET    /users/:id -> 200 (OK) or 404 (Not Found)
POST   /users     -> 201 (Created)
PUT    /users/:id -> 200 (OK) or 204 (No Content)
DELETE /users/:id -> 204 (No Content) or 404 (Not Found)
```

### 5. Implement Rate Limiting
```javascript
const rateLimit = require('express-rate-limit');

const apiLimiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 100, // limit each IP to 100 requests per windowMs
  message: 'Too many requests, please try again later.',
  standardHeaders: true,
  legacyHeaders: false,
});

app.use('/api/', apiLimiter);
```

---

## 💡 Common Use Cases

### User Authentication & Authorization
```javascript
app.get('/protected', (req, res) => {
  if (!req.user) return res.status(401).json({ error: 'Authentication required' });
  if (!req.user.isAdmin) return res.status(403).json({ error: 'Admin access required' });
  res.json({ data: 'Protected content' });
});
```

### File Upload with Validation
```javascript
app.post('/upload', upload.single('file'), (req, res) => {
  if (!req.file) return res.status(400).json({ error: 'No file uploaded' });
  if (req.file.size > MAX_SIZE) return res.status(413).json({ error: 'File too large' });
  res.status(201).json({ url: req.file.path });
});
```

### Resource Management
```javascript
app.put('/users/:id', (req, res) => {
  const user = updateUser(req.params.id, req.body);
  if (!user) return res.status(404).json({ error: 'User not found' });
  res.status(200).json(user);
});

app.delete('/users/:id', (req, res) => {
  const deleted = deleteUser(req.params.id);
  if (!deleted) return res.status(404).json({ error: 'User not found' });
  res.status(204).send();
});
```

### Async Operations
```javascript
app.post('/reports', (req, res) => {
  const jobId = queue.add('generate-report', req.body);
  res.status(202)
     .header('Location', `/jobs/${jobId}`)
     .json({ jobId, status: 'queued' });
});

app.get('/jobs/:id', (req, res) => {
  const job = getJob(req.params.id);
  if (!job) return res.status(404).json({ error: 'Job not found' });
  if (job.status === 'completed') return res.status(200).json(job.result);
  res.status(202).json({ status: job.status });
});
```

---

## 🔧 Implementation Examples

### Express.js Error Handling Middleware
```javascript
// Custom error types
class ValidationError extends Error {
  constructor(errors) {
    super('Validation failed');
    this.statusCode = 422;
    this.errors = errors;
  }
}

class NotFoundError extends Error {
  constructor(resource) {
    super(`${resource} not found`);
    this.statusCode = 404;
    this.resource = resource;
  }
}

// Error handling middleware
app.use((err, req, res, next) => {
  if (err instanceof ValidationError) {
    return res.status(err.statusCode).json({
      error: err.message,
      validationErrors: err.errors
    });
  }

  if (err instanceof NotFoundError) {
    return res.status(err.statusCode).json({
      error: err.message
    });
  }

  // Default error handling
  console.error(err);
  res.status(500).json({
    error: 'Internal Server Error',
    message: process.env.NODE_ENV === 'development' ? err.message : undefined
  });
});
```

### Response Helper Functions
```javascript
// Success responses
const sendSuccess = (res, data, status = 200) => {
  res.status(status).json({
    success: true,
    data
  });
};

const sendCreated = (res, data, location) => {
  res.status(201).header('Location', location).json({
    success: true,
    data
  });
};

const sendNoContent = (res) => {
  res.status(204).send();
};

// Error responses
const sendError = (res, message, status = 400, details = null) => {
  const error = { success: false, error: message };
  if (details) error.details = details;
  res.status(status).json(error);
};

const sendNotFound = (res, resource = 'Resource') => {
  sendError(res, `${resource} not found`, 404);
};

const sendUnauthorized = (res, message = 'Authentication required') => {
  sendError(res, message, 401);
};
```

---

## 📚 Quick Reference

### Most Common Status Codes
```
200 OK                    - Standard success
201 Created              - Resource created
204 No Content           - Success, no response body
301 Moved Permanently    - Permanent redirect
302 Found               - Temporary redirect
304 Not Modified        - Cached response valid
400 Bad Request         - Invalid request
401 Unauthorized        - Authentication required
403 Forbidden           - Insufficient permissions
404 Not Found           - Resource not found
409 Conflict            - Resource conflict
422 Unprocessable Entity - Validation errors
429 Too Many Requests   - Rate limit exceeded
500 Internal Server Error - Generic server error
502 Bad Gateway         - Upstream server error
503 Service Unavailable - Server unavailable
504 Gateway Timeout     - Upstream timeout
```

### Status Code Ranges
```
1xx - Informational: 100-199
2xx - Success:       200-299
3xx - Redirection:   300-399
4xx - Client Error:  400-499
5xx - Server Error:  500-599
```

### HTTP Method + Status Code Combinations
```
GET    + 200 = Resource retrieved
GET    + 404 = Resource not found
POST   + 201 = Resource created
POST   + 400 = Invalid request data
PUT    + 200 = Resource updated
PUT    + 404 = Resource to update not found
DELETE + 204 = Resource deleted
DELETE + 404 = Resource not found
```

---

## 🔗 Additional Resources

- [RFC 7231 - HTTP/1.1 Semantics and Content](https://tools.ietf.org/html/rfc7231)
- [RFC 7235 - HTTP Authentication](https://tools.ietf.org/html/rfc7235)
- [RFC 6585 - Additional HTTP Status Codes](https://tools.ietf.org/html/rfc6585)
- [IANA HTTP Status Code Registry](https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml)

---

> **Remember**: HTTP status codes are part of your API contract. Use them consistently and document them properly for better API design and developer experience.*Created with ❤️ for developers who care about proper HTTP semantics*
