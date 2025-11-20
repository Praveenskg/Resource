# 🎯 Tailwind CSS Patterns

## Common Component Patterns

### Button Variants

```html
<!-- Primary Button -->
<button class="px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 active:bg-blue-700 transition-colors">
  Primary
</button>

<!-- Secondary Button -->
<button class="px-4 py-2 bg-gray-200 text-gray-800 rounded-lg hover:bg-gray-300 transition-colors">
  Secondary
</button>

<!-- Outline Button -->
<button class="px-4 py-2 border-2 border-blue-500 text-blue-500 rounded-lg hover:bg-blue-50 transition-colors">
  Outline
</button>
```

### Card Component

```html
<div class="bg-white rounded-lg shadow-md p-6 hover:shadow-lg transition-shadow">
  <h3 class="text-xl font-bold mb-2">Card Title</h3>
  <p class="text-gray-600 mb-4">Card description</p>
  <button class="text-blue-500 hover:text-blue-600">Learn More</button>
</div>
```

### Form Inputs

```html
<div class="mb-4">
  <label class="block text-sm font-medium text-gray-700 mb-1">
    Email
  </label>
  <input 
    type="email" 
    class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
    placeholder="Enter your email"
  />
</div>
```

### Navigation

```html
<nav class="bg-white shadow-md">
  <div class="container mx-auto px-4">
    <div class="flex items-center justify-between h-16">
      <div class="flex items-center space-x-4">
        <a href="/" class="text-xl font-bold">Logo</a>
      </div>
      <div class="flex items-center space-x-4">
        <a href="/about" class="hover:text-blue-500 transition-colors">About</a>
        <a href="/contact" class="hover:text-blue-500 transition-colors">Contact</a>
      </div>
    </div>
  </div>
</nav>
```

### Responsive Grid

```html
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
  <div class="bg-gray-100 p-4">Item 1</div>
  <div class="bg-gray-100 p-4">Item 2</div>
  <div class="bg-gray-100 p-4">Item 3</div>
</div>
```

---

> Created with ❤️ by Praveen Singh

