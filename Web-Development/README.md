# 🎨 Web Development Resources

HTML, CSS, and modern web development patterns.

## 📚 Table of Contents

- [HTML Snippets](#html-snippets)
- [CSS Patterns](#css-patterns)
- [Tailwind CSS](#tailwind-css)
- [Flexbox & Grid](#flexbox--grid)
- [Responsive Design](#responsive-design)

---

## 📄 HTML Snippets

### Semantic HTML

```html
<!-- Header -->
<header>
  <nav>
    <ul>
      <li><a href="/">Home</a></li>
      <li><a href="/about">About</a></li>
    </ul>
  </nav>
</header>

<!-- Main Content -->
<main>
  <article>
    <h1>Article Title</h1>
    <p>Article content...</p>
  </article>
</main>

<!-- Footer -->
<footer>
  <p>&copy; 2024 Company Name</p>
</footer>
```

### Forms

```html
<form>
  <label for="email">Email</label>
  <input type="email" id="email" name="email" required>
  
  <label for="password">Password</label>
  <input type="password" id="password" name="password" required>
  
  <button type="submit">Submit</button>
</form>
```

---

## 🎨 CSS Patterns

### Centering

```css
/* Flexbox Centering */
.center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}

/* Grid Centering */
.center-grid {
  display: grid;
  place-items: center;
}

/* Absolute Centering */
.center-absolute {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
```

### Card Component

```css
.card {
  background: white;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  padding: 1.5rem;
  transition: box-shadow 0.3s ease;
}

.card:hover {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
}
```

---

## 🎯 Tailwind CSS

### Common Utilities

```html
<!-- Container -->
<div class="container mx-auto px-4">

<!-- Flexbox -->
<div class="flex items-center justify-between">

<!-- Grid -->
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">

<!-- Responsive Text -->
<h1 class="text-2xl md:text-4xl lg:text-6xl">

<!-- Hover Effects -->
<button class="bg-blue-500 hover:bg-blue-600 transition-colors">
```

### Custom Components

```html
<!-- Button -->
<button class="px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors">
  Click Me
</button>

<!-- Card -->
<div class="bg-white rounded-lg shadow-md p-6 hover:shadow-lg transition-shadow">
  <h2 class="text-xl font-bold mb-2">Card Title</h2>
  <p class="text-gray-600">Card content</p>
</div>
```

---

## 📐 Flexbox & Grid

### Flexbox

```css
.flex-container {
  display: flex;
  flex-direction: row; /* row | column */
  justify-content: center; /* flex-start | center | flex-end | space-between */
  align-items: center; /* flex-start | center | flex-end | stretch */
  gap: 1rem;
  flex-wrap: wrap;
}
```

### CSS Grid

```css
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1rem;
  grid-auto-rows: minmax(100px, auto);
}

.grid-item {
  grid-column: span 2;
  grid-row: span 1;
}
```

---

## 📱 Responsive Design

### Media Queries

```css
/* Mobile First */
.container {
  padding: 1rem;
}

@media (min-width: 768px) {
  .container {
    padding: 2rem;
  }
}

@media (min-width: 1024px) {
  .container {
    padding: 3rem;
  }
}
```

### Container Queries

```css
.card {
  container-type: inline-size;
}

@container (min-width: 400px) {
  .card-content {
    display: flex;
  }
}
```

---

> Created with ❤️ by Praveen Singh

