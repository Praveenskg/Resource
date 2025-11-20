# ⚡ Performance & Debugging Guide

## 🔍 Debugging Techniques

### Chrome DevTools

```javascript
// Breakpoints
debugger; // Pause execution

// Console methods
console.log('Info:', data);
console.error('Error:', error);
console.warn('Warning:', warning);
console.table(data); // Display as table
console.time('label'); // Start timer
console.timeEnd('label'); // End timer
console.trace(); // Stack trace
console.group('Group'); // Group logs
console.groupEnd();
```

### Performance Profiling

```javascript
// Performance API
const start = performance.now();
// ... code ...
const end = performance.now();
console.log(`Execution time: ${end - start}ms`);

// Performance marks
performance.mark('start');
// ... code ...
performance.mark('end');
performance.measure('duration', 'start', 'end');
```

### Memory Leaks Detection

```javascript
// Check memory usage
console.log(performance.memory);

// Monitor memory
setInterval(() => {
  console.log({
    used: performance.memory.usedJSHeapSize,
    total: performance.memory.totalJSHeapSize,
    limit: performance.memory.jsHeapSizeLimit,
  });
}, 5000);
```

## 🚀 Optimization Techniques

### Code Splitting

```javascript
// Dynamic imports
const Component = lazy(() => import('./Component'));

// Route-based splitting
const routes = [
  {
    path: '/',
    component: lazy(() => import('./Home')),
  },
];
```

### Memoization

```javascript
// React.memo
const MemoizedComponent = React.memo(Component);

// useMemo
const expensiveValue = useMemo(() => {
  return computeExpensiveValue(a, b);
}, [a, b]);

// useCallback
const memoizedCallback = useCallback(() => {
  doSomething(a, b);
}, [a, b]);
```

### Debounce & Throttle

```javascript
// Debounce
function debounce(func, wait) {
  let timeout;
  return function executedFunction(...args) {
    const later = () => {
      clearTimeout(timeout);
      func(...args);
    };
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
  };
}

// Throttle
function throttle(func, limit) {
  let inThrottle;
  return function(...args) {
    if (!inThrottle) {
      func.apply(this, args);
      inThrottle = true;
      setTimeout(() => inThrottle = false, limit);
    }
  };
}
```

## 📊 Performance Metrics

### Web Vitals

```javascript
// Core Web Vitals
import { getCLS, getFID, getFCP, getLCP, getTTFB } from 'web-vitals';

getCLS(console.log);
getFID(console.log);
getFCP(console.log);
getLCP(console.log);
getTTFB(console.log);
```

### Lighthouse CI

```bash
# Run Lighthouse
npx lighthouse https://example.com --view

# CI integration
npm install -g @lhci/cli
lhci autorun
```

---

> Created with ❤️ by Praveen Singh

