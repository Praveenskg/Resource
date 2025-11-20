# 🔍 Search Resources

Elasticsearch, Algolia, and full-text search patterns.

## 📚 Table of Contents

- [Elasticsearch](#elasticsearch)
- [Algolia](#algolia)
- [Search Patterns](#search-patterns)

---

## 🔎 Elasticsearch

### Basic Query

```javascript
const { Client } = require('@elastic/elasticsearch');
const client = new Client({ node: 'http://localhost:9200' });

// Search
const result = await client.search({
  index: 'users',
  body: {
    query: {
      match: {
        name: 'John',
      },
    },
  },
});
```

### Index Document

```javascript
await client.index({
  index: 'users',
  id: '1',
  body: {
    name: 'John Doe',
    email: 'john@example.com',
  },
});
```

---

## 🚀 Algolia

### Setup

```javascript
const algoliasearch = require('algoliasearch');
const client = algoliasearch('APP_ID', 'API_KEY');
const index = client.initIndex('users');

// Add object
await index.saveObject({
  objectID: '1',
  name: 'John Doe',
  email: 'john@example.com',
});

// Search
const { hits } = await index.search('John');
```

---

## 🔍 Search Patterns

### Fuzzy Search

```javascript
// Elasticsearch
{
  query: {
    fuzzy: {
      name: {
        value: 'jhon',
        fuzziness: 'AUTO',
      },
    },
  },
}
```

### Faceted Search

```javascript
// Algolia
const { hits, facets } = await index.search('query', {
  facets: ['category', 'price'],
});
```

---

> Created with ❤️ by Praveen Singh

