# 🔧 curl Examples

## RESTful API Operations

### GET Requests

```bash
# Simple GET
curl https://api.example.com/users

# GET with query parameters
curl "https://api.example.com/users?page=1&limit=10"

# GET with headers
curl -H "Accept: application/json" \
     -H "Authorization: Bearer token" \
     https://api.example.com/users

# GET and save response
curl -o users.json https://api.example.com/users

# GET with verbose output
curl -v https://api.example.com/users
```

### POST Requests

```bash
# POST with JSON data
curl -X POST https://api.example.com/users \
  -H "Content-Type: application/json" \
  -d '{"name": "John", "email": "john@example.com"}'

# POST with JSON file
curl -X POST https://api.example.com/users \
  -H "Content-Type: application/json" \
  -d @data.json

# POST form data
curl -X POST https://api.example.com/users \
  -d "name=John" \
  -d "email=john@example.com"

# POST multipart form
curl -X POST https://api.example.com/upload \
  -F "file=@/path/to/file.jpg" \
  -F "name=John"
```

### PUT Requests

```bash
# PUT with JSON
curl -X PUT https://api.example.com/users/1 \
  -H "Content-Type: application/json" \
  -d '{"name": "John Updated"}'

# PUT with file
curl -X PUT https://api.example.com/users/1 \
  -H "Content-Type: application/json" \
  -d @update.json
```

### DELETE Requests

```bash
# Simple DELETE
curl -X DELETE https://api.example.com/users/1

# DELETE with authentication
curl -X DELETE \
  -H "Authorization: Bearer token" \
  https://api.example.com/users/1
```

### PATCH Requests

```bash
# PATCH with JSON
curl -X PATCH https://api.example.com/users/1 \
  -H "Content-Type: application/json" \
  -d '{"name": "John"}'
```

## Authentication Examples

### Bearer Token

```bash
curl -H "Authorization: Bearer YOUR_TOKEN" \
  https://api.example.com/users
```

### Basic Authentication

```bash
curl -u username:password \
  https://api.example.com/users

# Or with header
curl -H "Authorization: Basic $(echo -n 'username:password' | base64)" \
  https://api.example.com/users
```

### API Key

```bash
curl -H "X-API-Key: YOUR_API_KEY" \
  https://api.example.com/users
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
TOKEN="your_access_token"
curl -H "Authorization: Bearer $TOKEN" \
  https://api.example.com/users
```

## File Operations

### Download Files

```bash
# Download and save with original name
curl -O https://example.com/file.pdf

# Download and save with custom name
curl -o custom-name.pdf https://example.com/file.pdf

# Download with progress bar
curl --progress-bar -o file.zip https://example.com/file.zip

# Resume interrupted download
curl -C - -O https://example.com/large-file.zip
```

### Upload Files

```bash
# Upload single file
curl -X POST https://api.example.com/upload \
  -F "file=@/path/to/file.jpg"

# Upload multiple files
curl -X POST https://api.example.com/upload \
  -F "file1=@file1.jpg" \
  -F "file2=@file2.jpg"

# Upload with additional data
curl -X POST https://api.example.com/upload \
  -F "file=@file.jpg" \
  -F "name=John" \
  -F "description=Profile picture"
```

## Advanced Options

### Headers

```bash
# Include response headers
curl -i https://api.example.com/users

# Show only headers
curl -I https://api.example.com/users

# Custom headers
curl -H "X-Custom-Header: value" \
     -H "User-Agent: MyApp/1.0" \
     https://api.example.com/users
```

### Timeouts

```bash
# Set connection timeout
curl --connect-timeout 10 https://api.example.com/users

# Set maximum time
curl --max-time 30 https://api.example.com/users

# Retry on failure
curl --retry 3 --retry-delay 5 https://api.example.com/users
```

### SSL/TLS

```bash
# Ignore SSL certificate errors (not recommended)
curl -k https://api.example.com/users

# Use specific certificate
curl --cert client.pem --key client.key https://api.example.com/users

# Verify certificate
curl --cacert ca-bundle.crt https://api.example.com/users
```

### Proxies

```bash
# HTTP proxy
curl --proxy http://proxy.example.com:8080 \
  https://api.example.com/users

# SOCKS proxy
curl --socks5-hostname proxy.example.com:1080 \
  https://api.example.com/users

# Proxy with authentication
curl --proxy http://user:pass@proxy.example.com:8080 \
  https://api.example.com/users
```

### Cookies

```bash
# Send cookies
curl -b "sessionid=abc123" https://api.example.com/users

# Save cookies to file
curl -c cookies.txt https://api.example.com/login

# Load cookies from file
curl -b cookies.txt https://api.example.com/users
```

### Redirects

```bash
# Follow redirects
curl -L https://example.com

# Don't follow redirects
curl --location-trusted https://example.com

# Maximum redirects
curl -L --max-redirs 5 https://example.com
```

## Output Formatting

### JSON Processing

```bash
# Pretty print JSON (requires jq)
curl https://api.example.com/users | jq .

# Filter JSON
curl https://api.example.com/users | jq '.[0].name'

# Extract specific fields
curl https://api.example.com/users | jq '.[] | {id, name, email}'
```

### Save Response

```bash
# Save to file
curl -o response.json https://api.example.com/users

# Append to file
curl -o - >> response.json https://api.example.com/users

# Save headers and body
curl -D headers.txt -o body.json https://api.example.com/users
```

### Verbose Output

```bash
# Verbose mode
curl -v https://api.example.com/users

# Very verbose
curl -vv https://api.example.com/users

# Show request/response
curl --trace-ascii trace.txt https://api.example.com/users
```

## Useful Aliases

Add to your `.bashrc` or `.zshrc`:

```bash
# Pretty JSON curl
alias curlj='curl -s | jq .'

# curl with headers
alias curlh='curl -i'

# curl POST JSON
alias curlpost='curl -X POST -H "Content-Type: application/json"'

# curl with authentication
alias curlauth='curl -H "Authorization: Bearer"'
```

## Common Patterns

### Health Check

```bash
curl -f https://api.example.com/health || echo "Service is down"
```

### Rate Limiting Test

```bash
for i in {1..10}; do
  curl https://api.example.com/users
  sleep 1
done
```

### API Testing Script

```bash
#!/bin/bash
BASE_URL="https://api.example.com"
TOKEN="your_token"

# Test GET
echo "Testing GET..."
curl -H "Authorization: Bearer $TOKEN" "$BASE_URL/users"

# Test POST
echo "Testing POST..."
curl -X POST \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"name": "Test"}' \
  "$BASE_URL/users"
```

---

> Created with ❤️ by Praveen Singh

