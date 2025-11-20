# 🚀 Vercel & Netlify Deployment Guide

## Vercel

### Quick Start

```bash
# Install CLI
npm i -g vercel

# Deploy
vercel

# Production deploy
vercel --prod
```

### Environment Variables

```bash
# Set environment variable
vercel env add DATABASE_URL

# List environment variables
vercel env ls

# Pull environment variables
vercel env pull .env.local
```

### Domains

```bash
# Add domain
vercel domains add example.com

# List domains
vercel domains ls

# Remove domain
vercel domains rm example.com
```

## Netlify

### Quick Start

```bash
# Install CLI
npm install -g netlify-cli

# Deploy
netlify deploy

# Production deploy
netlify deploy --prod
```

### Functions

```javascript
// netlify/functions/hello.js
exports.handler = async (event, context) => {
  return {
    statusCode: 200,
    body: JSON.stringify({ message: 'Hello World' }),
  };
};
```

### Environment Variables

```bash
# Set environment variable
netlify env:set DATABASE_URL "postgres://..."

# List environment variables
netlify env:list

# Get environment variable
netlify env:get DATABASE_URL
```

---

> Created with ❤️ by Praveen Singh

