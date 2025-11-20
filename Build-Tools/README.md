# 📦 Build Tools

Webpack, Vite, Rollup configurations and build optimization.

## 📚 Table of Contents

- [Webpack](#webpack)
- [Vite](#vite)
- [Rollup](#rollup)
- [Build Optimization](#build-optimization)

---

## 📦 Webpack

### Basic Configuration

```javascript
// webpack.config.js
const path = require('path');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js',
  },
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: 'ts-loader',
        exclude: /node_modules/,
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader'],
      },
    ],
  },
  resolve: {
    extensions: ['.tsx', '.ts', '.js'],
  },
};
```

---

## ⚡ Vite

### Configuration

```typescript
// vite.config.ts
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      '@': '/src',
    },
  },
  build: {
    outDir: 'dist',
    sourcemap: true,
  },
});
```

---

## 📄 Rollup

### Configuration

```javascript
// rollup.config.js
import resolve from '@rollup/plugin-node-resolve';
import commonjs from '@rollup/plugin-commonjs';
import typescript from '@rollup/plugin-typescript';

export default {
  input: 'src/index.ts',
  output: {
    file: 'dist/bundle.js',
    format: 'cjs',
  },
  plugins: [
    resolve(),
    commonjs(),
    typescript(),
  ],
};
```

---

## 🚀 Build Optimization

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

### Tree Shaking

```javascript
// Use ES modules
import { specificFunction } from './utils';

// Avoid
import * as utils from './utils';
```

---

> Created with ❤️ by Praveen Singh

