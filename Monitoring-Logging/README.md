# 📊 Monitoring & Logging

Logging patterns, monitoring tools, and observability.

## 📚 Table of Contents

- [Logging](#logging)
- [Monitoring](#monitoring)
- [Error Tracking](#error-tracking)

---

## 📝 Logging

### Winston (Node.js)

```javascript
const winston = require('winston');

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.json(),
  transports: [
    new winston.transports.File({ filename: 'error.log', level: 'error' }),
    new winston.transports.File({ filename: 'combined.log' }),
  ],
});

if (process.env.NODE_ENV !== 'production') {
  logger.add(new winston.transports.Console({
    format: winston.format.simple()
  }));
}
```

### Pino (Node.js)

```javascript
const pino = require('pino');

const logger = pino({
  level: 'info',
  transport: {
    target: 'pino-pretty',
    options: {
      colorize: true
    }
  }
});

logger.info('Application started');
logger.error({ err }, 'Error occurred');
```

### Python Logging

```python
import logging

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('app.log'),
        logging.StreamHandler()
    ]
)

logger = logging.getLogger(__name__)
logger.info('Application started')
```

---

## 📊 Monitoring

### Prometheus

```yaml
# prometheus.yml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'my-app'
    static_configs:
      - targets: ['localhost:3000']
```

### Grafana Dashboard

```json
{
  "dashboard": {
    "title": "Application Metrics",
    "panels": [
      {
        "title": "Request Rate",
        "targets": [
          {
            "expr": "rate(http_requests_total[5m])"
          }
        ]
      }
    ]
  }
}
```

---

## 🚨 Error Tracking

### Sentry

```javascript
// Node.js
import * as Sentry from "@sentry/node";

Sentry.init({
  dsn: "your-dsn-here",
  environment: process.env.NODE_ENV,
});

try {
  // Your code
} catch (error) {
  Sentry.captureException(error);
}
```

---

> Created with ❤️ by Praveen Singh

