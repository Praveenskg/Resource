# 💾 Caching Strategies

Redis, Memcached, and caching patterns.

## 📚 Table of Contents

- [Redis](#redis)
- [Cache Patterns](#cache-patterns)
- [CDN Configuration](#cdn-configuration)

---

## 🔴 Redis

### Basic Commands

```bash
# Set value
SET key value

# Get value
GET key

# Set with expiration
SETEX key 60 value

# Delete key
DEL key

# Check if key exists
EXISTS key

# Set expiration
EXPIRE key 60

# Get remaining TTL
TTL key
```

### Node.js Example

```javascript
const redis = require('redis');
const client = redis.createClient();

await client.connect();

// Set value
await client.set('key', 'value');

// Set with expiration
await client.setEx('key', 60, 'value');

// Get value
const value = await client.get('key');

// Delete
await client.del('key');
```

---

## 🎯 Cache Patterns

### Cache-Aside

```javascript
async function getData(key) {
  // Try cache first
  let data = await cache.get(key);
  
  if (!data) {
    // Cache miss - fetch from database
    data = await database.get(key);
    // Store in cache
    await cache.set(key, data, 3600);
  }
  
  return data;
}
```

### Write-Through

```javascript
async function updateData(key, value) {
  // Update database
  await database.update(key, value);
  // Update cache
  await cache.set(key, value);
}
```

### Write-Behind

```javascript
async function updateData(key, value) {
  // Update cache immediately
  await cache.set(key, value);
  // Queue database update
  await queue.add('update-db', { key, value });
}
```

---

## 🌐 CDN Configuration

### Cache Headers

```javascript
// Express.js
app.get('/api/data', (req, res) => {
  res.setHeader('Cache-Control', 'public, max-age=3600');
  res.json(data);
});

// Next.js
export async function getServerSideProps({ res }) {
  res.setHeader('Cache-Control', 'public, s-maxage=60, stale-while-revalidate=120');
  return { props: { data } };
}
```

---

> Created with ❤️ by Praveen Singh

