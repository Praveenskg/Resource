# 📋 HTTP Status Codes Reference

Complete reference of HTTP status codes with descriptions and use cases.

## 1xx Informational Responses

| Code | Name | Description |
|------|------|-------------|
| 100 | Continue | Client should continue the request |
| 101 | Switching Protocols | Server is switching protocols |
| 102 | Processing | Server is processing the request |
| 103 | Early Hints | Used to return some response headers |

## 2xx Success Responses

| Code | Name | Description | Use Case |
|------|------|-------------|----------|
| 200 | OK | Request succeeded | Standard success response |
| 201 | Created | Resource created successfully | POST request that creates a resource |
| 202 | Accepted | Request accepted but not processed | Async processing started |
| 203 | Non-Authoritative Information | Metadata differs from origin | Proxy response |
| 204 | No Content | Success with no content | DELETE or PUT without response body |
| 205 | Reset Content | Client should reset the document view | Form submission |
| 206 | Partial Content | Partial content returned | Range requests |
| 207 | Multi-Status | Multiple status codes | WebDAV operations |
| 208 | Already Reported | Members already enumerated | WebDAV |
| 226 | IM Used | Server fulfilled GET request | Delta encoding |

## 3xx Redirection Responses

| Code | Name | Description | Use Case |
|------|------|-------------|----------|
| 300 | Multiple Choices | Multiple options available | Content negotiation |
| 301 | Moved Permanently | Resource permanently moved | URL change |
| 302 | Found | Resource temporarily moved | Temporary redirect |
| 303 | See Other | Redirect to another resource | POST redirect |
| 304 | Not Modified | Resource not modified | Cached response valid |
| 305 | Use Proxy | Use proxy specified | Deprecated |
| 306 | Unused | Previously used, now reserved | - |
| 307 | Temporary Redirect | Temporary redirect | Preserve request method |
| 308 | Permanent Redirect | Permanent redirect | Preserve request method |

## 4xx Client Error Responses

| Code | Name | Description | Use Case |
|------|------|-------------|----------|
| 400 | Bad Request | Invalid request syntax | Malformed request |
| 401 | Unauthorized | Authentication required | Missing/invalid credentials |
| 402 | Payment Required | Payment required | Reserved for future use |
| 403 | Forbidden | Server refuses to authorize | Insufficient permissions |
| 404 | Not Found | Resource not found | Invalid URL or deleted resource |
| 405 | Method Not Allowed | Method not allowed for resource | Wrong HTTP method |
| 406 | Not Acceptable | Server cannot produce matching response | Content negotiation failed |
| 407 | Proxy Authentication Required | Proxy authentication needed | Proxy requires auth |
| 408 | Request Timeout | Request took too long | Client didn't send request in time |
| 409 | Conflict | Request conflicts with current state | Resource conflict |
| 410 | Gone | Resource no longer available | Permanently deleted |
| 411 | Length Required | Content-Length header required | Missing content length |
| 412 | Precondition Failed | Precondition in header failed | Conditional request failed |
| 413 | Payload Too Large | Request entity too large | File too big |
| 414 | URI Too Long | URI longer than server can process | URL too long |
| 415 | Unsupported Media Type | Media format not supported | Wrong content type |
| 416 | Range Not Satisfiable | Range header cannot be satisfied | Invalid range request |
| 417 | Expectation Failed | Expect header cannot be met | Server cannot meet expectation |
| 418 | I'm a teapot | April Fools' joke | RFC 2324 |
| 421 | Misdirected Request | Request sent to wrong server | Server cannot produce response |
| 422 | Unprocessable Entity | Well-formed but semantically incorrect | Validation errors |
| 423 | Locked | Resource is locked | WebDAV locked resource |
| 424 | Failed Dependency | Request failed due to dependency | WebDAV |
| 425 | Too Early | Server unwilling to risk processing | Replay attack risk |
| 426 | Upgrade Required | Client should upgrade protocol | Protocol upgrade needed |
| 428 | Precondition Required | Origin server requires conditional request | Missing If-Match header |
| 429 | Too Many Requests | Rate limit exceeded | Too many requests |
| 431 | Request Header Fields Too Large | Header fields too large | Headers exceed limit |
| 451 | Unavailable For Legal Reasons | Blocked for legal reasons | Censored content |

## 5xx Server Error Responses

| Code | Name | Description | Use Case |
|------|------|-------------|----------|
| 500 | Internal Server Error | Generic server error | Unexpected server error |
| 501 | Not Implemented | Method not implemented | Unsupported method |
| 502 | Bad Gateway | Invalid response from upstream | Upstream server error |
| 503 | Service Unavailable | Service temporarily unavailable | Server overloaded/maintenance |
| 504 | Gateway Timeout | Upstream server timeout | Upstream server didn't respond |
| 505 | HTTP Version Not Supported | HTTP version not supported | Unsupported HTTP version |
| 506 | Variant Also Negotiates | Server has internal configuration error | Content negotiation error |
| 507 | Insufficient Storage | Server cannot store representation | WebDAV storage full |
| 508 | Loop Detected | Infinite loop detected | WebDAV infinite loop |
| 510 | Not Extended | Further extensions required | Policy not fulfilled |
| 511 | Network Authentication Required | Network authentication required | Network access control |

## Common Status Code Usage

### Success (2xx)

```javascript
// 200 OK - Standard success
app.get('/users', (req, res) => {
  res.status(200).json(users);
});

// 201 Created - Resource created
app.post('/users', (req, res) => {
  const user = createUser(req.body);
  res.status(201).json(user);
});

// 204 No Content - Success with no body
app.delete('/users/:id', (req, res) => {
  deleteUser(req.params.id);
  res.status(204).send();
});
```

### Client Errors (4xx)

```javascript
// 400 Bad Request - Invalid input
app.post('/users', (req, res) => {
  if (!req.body.email) {
    return res.status(400).json({ error: 'Email required' });
  }
});

// 401 Unauthorized - Authentication required
app.get('/profile', authenticate, (req, res) => {
  if (!req.user) {
    return res.status(401).json({ error: 'Unauthorized' });
  }
});

// 404 Not Found - Resource not found
app.get('/users/:id', (req, res) => {
  const user = getUser(req.params.id);
  if (!user) {
    return res.status(404).json({ error: 'User not found' });
  }
});

// 422 Unprocessable Entity - Validation error
app.post('/users', validateUser, (req, res) => {
  const errors = validate(req.body);
  if (errors.length > 0) {
    return res.status(422).json({ errors });
  }
});

// 429 Too Many Requests - Rate limit
app.use(rateLimiter);
```

### Server Errors (5xx)

```javascript
// 500 Internal Server Error - Generic error
app.use((err, req, res, next) => {
  console.error(err);
  res.status(500).json({ error: 'Internal server error' });
});

// 503 Service Unavailable - Maintenance
app.use((req, res) => {
  if (isMaintenanceMode) {
    return res.status(503).json({ error: 'Service unavailable' });
  }
});
```

## Status Code Best Practices

1. **Use appropriate status codes** - Don't always return 200
2. **Be consistent** - Use same codes for same situations
3. **Include error details** - Provide helpful error messages
4. **Handle all cases** - Cover success, client errors, and server errors
5. **Document your API** - Document which codes your API returns

## Quick Reference

```
Success:     200, 201, 204
Redirect:    301, 302, 304
Client Error: 400, 401, 403, 404, 422, 429
Server Error: 500, 502, 503, 504
```

---

> Created with ❤️ by Praveen Singh

