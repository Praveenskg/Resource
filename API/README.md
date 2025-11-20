# 🌐 API & HTTP Tools Cheat Sheet

## 📡 curl Commands

### Basic Requests

```bash
# GET request
curl https://api.example.com/users

# POST request
curl -X POST https://api.example.com/users \
  -H "Content-Type: application/json" \
  -d '{"name": "John", "email": "john@example.com"}'

# PUT request
curl -X PUT https://api.example.com/users/1 \
  -H "Content-Type: application/json" \
  -d '{"name": "John Updated"}'

# DELETE request
curl -X DELETE https://api.example.com/users/1

# PATCH request
curl -X PATCH https://api.example.com/users/1 \
  -H "Content-Type: application/json" \
  -d '{"name": "John"}'
```

### Headers & Authentication

```bash
# Add custom header
curl -H "Authorization: Bearer token" https://api.example.com/users

# Add multiple headers
curl -H "Content-Type: application/json" \
     -H "Authorization: Bearer token" \
     https://api.example.com/users

# Basic authentication
curl -u username:password https://api.example.com/users

# Bearer token
curl -H "Authorization: Bearer YOUR_TOKEN" https://api.example.com/users

# API key
curl -H "X-API-Key: YOUR_API_KEY" https://api.example.com/users
```

### File Operations

```bash
# Download file
curl -O https://example.com/file.pdf
curl -o custom-name.pdf https://example.com/file.pdf

# Upload file
curl -X POST https://api.example.com/upload \
  -F "file=@/path/to/file.jpg"

# Upload multiple files
curl -X POST https://api.example.com/upload \
  -F "file1=@file1.jpg" \
  -F "file2=@file2.jpg"
```

### Advanced Options

```bash
# Follow redirects
curl -L https://example.com

# Include headers in output
curl -i https://api.example.com/users

# Show only headers
curl -I https://api.example.com/users

# Verbose output
curl -v https://api.example.com/users

# Save response to file
curl -o response.json https://api.example.com/users

# Show progress
curl --progress-bar -o file.zip https://example.com/file.zip

# Set timeout
curl --max-time 10 https://api.example.com/users

# Ignore SSL certificate errors (not recommended for production)
curl -k https://api.example.com/users

# Use proxy
curl --proxy http://proxy.example.com:8080 https://api.example.com/users
```

## 🔧 httpie (Modern HTTP Client)

### Installation

```bash
# macOS
brew install httpie

# Linux
apt install httpie
# or
pip install httpie
```

### Basic Usage

```bash
# GET request
http GET https://api.example.com/users

# POST request
http POST https://api.example.com/users name=John email=john@example.com

# POST with JSON
http POST https://api.example.com/users \
  name=John \
  email=john@example.com \
  age:=30

# PUT request
http PUT https://api.example.com/users/1 name=JohnUpdated

# DELETE request
http DELETE https://api.example.com/users/1

# With headers
http GET https://api.example.com/users \
  Authorization:"Bearer token" \
  X-Custom-Header:"value"
```

### File Operations

```bash
# Upload file
http POST https://api.example.com/upload file@/path/to/file.jpg

# Download file
http --download https://example.com/file.pdf
```

## 📋 HTTP Status Codes

### 2xx Success

| Code | Name | Description |
|------|------|-------------|
| 200 | OK | Request succeeded |
| 201 | Created | Resource created successfully |
| 202 | Accepted | Request accepted but not processed |
| 204 | No Content | Success with no content to return |

### 3xx Redirection

| Code | Name | Description |
|------|------|-------------|
| 301 | Moved Permanently | Resource permanently moved |
| 302 | Found | Resource temporarily moved |
| 304 | Not Modified | Resource not modified since last request |
| 307 | Temporary Redirect | Temporary redirect |

### 4xx Client Error

| Code | Name | Description |
|------|------|-------------|
| 400 | Bad Request | Invalid request syntax |
| 401 | Unauthorized | Authentication required |
| 403 | Forbidden | Server refuses to authorize |
| 404 | Not Found | Resource not found |
| 405 | Method Not Allowed | Method not allowed for resource |
| 409 | Conflict | Request conflicts with current state |
| 422 | Unprocessable Entity | Well-formed but semantically incorrect |
| 429 | Too Many Requests | Rate limit exceeded |

### 5xx Server Error

| Code | Name | Description |
|------|------|-------------|
| 500 | Internal Server Error | Generic server error |
| 501 | Not Implemented | Method not implemented |
| 502 | Bad Gateway | Invalid response from upstream |
| 503 | Service Unavailable | Service temporarily unavailable |
| 504 | Gateway Timeout | Upstream server timeout |

## 🧪 Testing APIs

### Using curl for Testing

```bash
# Test endpoint availability
curl -I https://api.example.com/health

# Test with timeout
curl --max-time 5 https://api.example.com/users

# Test POST endpoint
curl -X POST https://api.example.com/users \
  -H "Content-Type: application/json" \
  -d '{"test": true}' \
  -w "\nHTTP Status: %{http_code}\n"
```

### Using httpie for Testing

```bash
# Pretty print JSON response
http GET https://api.example.com/users --pretty=all

# Print request and response
http --verbose GET https://api.example.com/users

# Save response
http GET https://api.example.com/users > response.json
```

## 📝 Postman Examples

### Environment Variables

```json
{
  "base_url": "https://api.example.com",
  "api_key": "your-api-key",
  "token": "your-auth-token"
}
```

### Collection Structure

```
Collection: User API
├── Get All Users (GET /users)
├── Get User by ID (GET /users/:id)
├── Create User (POST /users)
├── Update User (PUT /users/:id)
└── Delete User (DELETE /users/:id)
```

### Pre-request Scripts

```javascript
// Set dynamic timestamp
pm.environment.set("timestamp", Date.now());

// Generate random ID
pm.environment.set("randomId", Math.random().toString(36).substring(7));
```

### Test Scripts

```javascript
// Check status code
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

// Check response time
pm.test("Response time is less than 200ms", function () {
    pm.expect(pm.response.responseTime).to.be.below(200);
});

// Check JSON structure
pm.test("Response has required fields", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData).to.have.property('id');
    pm.expect(jsonData).to.have.property('name');
});
```

## 🔐 Authentication Methods

### Bearer Token

```bash
curl -H "Authorization: Bearer YOUR_TOKEN" https://api.example.com/users
```

### Basic Auth

```bash
curl -u username:password https://api.example.com/users
```

### API Key

```bash
curl -H "X-API-Key: YOUR_API_KEY" https://api.example.com/users
```

### OAuth 2.0

```bash
# Get access token
curl -X POST https://oauth.example.com/token \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "grant_type=client_credentials" \
  -d "client_id=YOUR_CLIENT_ID" \
  -d "client_secret=YOUR_CLIENT_SECRET"

# Use access token
curl -H "Authorization: Bearer ACCESS_TOKEN" https://api.example.com/users
```

## 📊 Useful Tools

- **Postman** - API testing and documentation
- **Insomnia** - REST API client
- **httpie** - Command-line HTTP client
- **curl** - Command-line tool for transferring data
- **jq** - JSON processor for command line
- **REST Client** - VS Code extension for API testing

## 🎯 Common Use Cases

### Testing REST API

```bash
# Create resource
curl -X POST https://api.example.com/users \
  -H "Content-Type: application/json" \
  -d '{"name": "John", "email": "john@example.com"}'

# Get resource
curl https://api.example.com/users/1

# Update resource
curl -X PUT https://api.example.com/users/1 \
  -H "Content-Type: application/json" \
  -d '{"name": "John Updated"}'

# Delete resource
curl -X DELETE https://api.example.com/users/1
```

### Working with JSON

```bash
# Pretty print JSON response
curl https://api.example.com/users | jq .

# Filter JSON response
curl https://api.example.com/users | jq '.[0].name'

# Extract specific fields
curl https://api.example.com/users | jq '.[] | {name, email}'
```

---

> Created with ❤️ by Praveen Singh

