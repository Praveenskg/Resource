# 📊 Profiling Guide

## Browser Profiling

### Chrome Performance Tab

1. Open DevTools → Performance
2. Click Record
3. Perform actions
4. Stop recording
5. Analyze timeline

### Memory Profiling

```javascript
// Take heap snapshot
// DevTools → Memory → Heap Snapshot

// Monitor allocations
// DevTools → Memory → Allocation Timeline
```

### Network Profiling

```javascript
// Monitor network requests
// DevTools → Network tab

// Throttle network
// DevTools → Network → Throttling
```

## Node.js Profiling

### CPU Profiling

```bash
# Generate CPU profile
node --prof script.js

# Process profile
node --prof-process isolate-*.log
```

### Memory Profiling

```bash
# Heap snapshot
node --heapsnapshot script.js

# Memory profiling
node --inspect script.js
# Then use Chrome DevTools
```

### Clinic.js

```bash
# Install
npm install -g clinic

# CPU profiling
clinic doctor -- node script.js

# Flame profiling
clinic flame -- node script.js

# Bubbleprof
clinic bubbleprof -- node script.js
```

## React Profiling

### React DevTools Profiler

1. Install React DevTools
2. Open Profiler tab
3. Click Record
4. Interact with app
5. Stop recording
6. Analyze components

### Performance Monitoring

```javascript
// Measure render time
const start = performance.now();
render();
const end = performance.now();
console.log(`Render time: ${end - start}ms`);
```

## Web Vitals

```javascript
import { getCLS, getFID, getFCP, getLCP, getTTFB } from 'web-vitals';

// Cumulative Layout Shift
getCLS(console.log);

// First Input Delay
getFID(console.log);

// First Contentful Paint
getFCP(console.log);

// Largest Contentful Paint
getLCP(console.log);

// Time to First Byte
getTTFB(console.log);
```

## Lighthouse

```bash
# Run Lighthouse
npx lighthouse https://example.com

# CI integration
npm install -g @lhci/cli
lhci autorun
```

---

> Created with ❤️ by Praveen Singh

