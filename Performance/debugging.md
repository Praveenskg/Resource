# 🐛 Debugging Guide

## Browser DevTools

### Console Commands

```javascript
// Basic logging
console.log('Info');
console.error('Error');
console.warn('Warning');
console.info('Information');

// Advanced logging
console.table(data); // Display as table
console.group('Group Name');
console.groupEnd();
console.time('Timer');
console.timeEnd('Timer');
console.trace(); // Stack trace
console.dir(obj); // Object inspection
console.assert(condition, 'Message'); // Assertion
```

### Breakpoints

```javascript
// Code breakpoint
debugger; // Pauses execution

// Conditional breakpoint
if (condition) {
  debugger;
}
```

### Network Debugging

```javascript
// Monitor fetch requests
const originalFetch = window.fetch;
window.fetch = function(...args) {
  console.log('Fetch:', args);
  return originalFetch.apply(this, args);
};

// Monitor XMLHttpRequest
const originalOpen = XMLHttpRequest.prototype.open;
XMLHttpRequest.prototype.open = function(...args) {
  console.log('XHR:', args);
  return originalOpen.apply(this, args);
};
```

## Node.js Debugging

### Debugger

```bash
# Start with debugger
node --inspect script.js

# Break on start
node --inspect-brk script.js

# Chrome DevTools
chrome://inspect
```

### VS Code Debugging

```json
// .vscode/launch.json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "request": "launch",
      "name": "Debug Node",
      "program": "${workspaceFolder}/index.js",
      "skipFiles": ["<node_internals>/**"]
    }
  ]
}
```

## React Debugging

### React DevTools

```javascript
// Component inspection
// Install React DevTools browser extension

// Profiler
// Use React DevTools Profiler tab
```

### Error Boundaries

```tsx
class ErrorBoundary extends React.Component {
  componentDidCatch(error, errorInfo) {
    console.error('Error:', error);
    console.error('Error Info:', errorInfo);
  }
}
```

## Performance Debugging

### Profiling

```javascript
// Performance API
const start = performance.now();
// ... code ...
const end = performance.now();
console.log(`Time: ${end - start}ms`);

// Performance marks
performance.mark('start');
// ... code ...
performance.mark('end');
performance.measure('duration', 'start', 'end');
```

### Memory Profiling

```javascript
// Check memory
console.log(performance.memory);

// Monitor memory leaks
setInterval(() => {
  const memory = performance.memory;
  console.log({
    used: (memory.usedJSHeapSize / 1048576).toFixed(2) + ' MB',
    total: (memory.totalJSHeapSize / 1048576).toFixed(2) + ' MB',
  });
}, 5000);
```

---

> Created with ❤️ by Praveen Singh

