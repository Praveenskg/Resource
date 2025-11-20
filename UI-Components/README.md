# 🎨 UI Components

Form validation, modals, loading states, and error handling patterns.

## 📚 Table of Contents

- [Form Validation](#form-validation)
- [Modal/Dialog](#modaldialog)
- [Loading States](#loading-states)
- [Error Handling UI](#error-handling-ui)

---

## 📝 Form Validation

### React Hook Form

```tsx
import { useForm } from 'react-hook-form';

function Form() {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const onSubmit = (data) => {
    console.log(data);
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      <input
        {...register('email', {
          required: 'Email is required',
          pattern: {
            value: /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i,
            message: 'Invalid email address',
          },
        })}
      />
      {errors.email && <span>{errors.email.message}</span>}
      
      <button type="submit">Submit</button>
    </form>
  );
}
```

---

## 🪟 Modal/Dialog

### Modal Component

```tsx
function Modal({ isOpen, onClose, children }) {
  if (!isOpen) return null;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <button onClick={onClose}>×</button>
        {children}
      </div>
    </div>
  );
}
```

---

## ⏳ Loading States

### Loading Component

```tsx
function Loading() {
  return (
    <div className="loading">
      <div className="spinner"></div>
      <p>Loading...</p>
    </div>
  );
}

// Usage
{loading ? <Loading /> : <Content />}
```

---

## ❌ Error Handling UI

### Error Boundary

```tsx
class ErrorBoundary extends React.Component {
  constructor(props) {
    super(props);
    this.state = { hasError: false };
  }

  static getDerivedStateFromError(error) {
    return { hasError: true };
  }

  render() {
    if (this.state.hasError) {
      return <h1>Something went wrong.</h1>;
    }

    return this.props.children;
  }
}
```

---

> Created with ❤️ by Praveen Singh

