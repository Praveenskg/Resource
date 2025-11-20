# 🌍 Internationalization (i18n)

i18n setup, translation management, and locale handling.

## 📚 Table of Contents

- [React i18next](#react-i18next)
- [Next.js i18n](#nextjs-i18n)
- [Locale Handling](#locale-handling)

---

## ⚛️ React i18next

### Setup

```typescript
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';

i18n.use(initReactI18next).init({
  resources: {
    en: {
      translation: {
        welcome: 'Welcome',
        hello: 'Hello {{name}}',
      },
    },
    es: {
      translation: {
        welcome: 'Bienvenido',
        hello: 'Hola {{name}}',
      },
    },
  },
  lng: 'en',
  fallbackLng: 'en',
  interpolation: {
    escapeValue: false,
  },
});
```

### Usage

```tsx
import { useTranslation } from 'react-i18next';

function App() {
  const { t, i18n } = useTranslation();

  return (
    <div>
      <h1>{t('welcome')}</h1>
      <p>{t('hello', { name: 'John' })}</p>
      <button onClick={() => i18n.changeLanguage('es')}>
        Spanish
      </button>
    </div>
  );
}
```

---

## 🚀 Next.js i18n

### Configuration

```javascript
// next.config.js
module.exports = {
  i18n: {
    locales: ['en', 'es', 'fr'],
    defaultLocale: 'en',
  },
};
```

### Usage

```tsx
import { useRouter } from 'next/router';

function Page() {
  const router = useRouter();
  const { locale } = router;

  return (
    <div>
      <h1>{locale === 'en' ? 'Welcome' : 'Bienvenido'}</h1>
    </div>
  );
}
```

---

## 📅 Date/Time Formatting

```javascript
const date = new Date();

// Intl.DateTimeFormat
const formatter = new Intl.DateTimeFormat('en-US', {
  year: 'numeric',
  month: 'long',
  day: 'numeric',
});

console.log(formatter.format(date)); // "December 20, 2024"
```

---

> Created with ❤️ by Praveen Singh

