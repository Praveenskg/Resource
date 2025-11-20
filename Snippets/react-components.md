# ⚛️ React Component Templates

## Functional Component

```tsx
import React from 'react';

interface ComponentProps {
  title: string;
  description?: string;
}

export const Component: React.FC<ComponentProps> = ({ 
  title, 
  description 
}) => {
  return (
    <div>
      <h1>{title}</h1>
      {description && <p>{description}</p>}
    </div>
  );
};
```

## Component with State

```tsx
import React, { useState } from 'react';

export const Counter: React.FC = () => {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>Count: {count}</p>
      <button onClick={() => setCount(count + 1)}>Increment</button>
      <button onClick={() => setCount(count - 1)}>Decrement</button>
      <button onClick={() => setCount(0)}>Reset</button>
    </div>
  );
};
```

## Component with useEffect

```tsx
import React, { useState, useEffect } from 'react';

export const DataFetcher: React.FC<{ url: string }> = ({ url }) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        setLoading(true);
        const response = await fetch(url);
        if (!response.ok) throw new Error('Failed to fetch');
        const result = await response.json();
        setData(result);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'Unknown error');
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [url]);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;
  if (!data) return <div>No data</div>;

  return <div>{JSON.stringify(data)}</div>;
};
```

## Form Component

```tsx
import React, { useState, FormEvent } from 'react';

interface FormData {
  name: string;
  email: string;
}

export const ContactForm: React.FC = () => {
  const [formData, setFormData] = useState<FormData>({
    name: '',
    email: '',
  });

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    // Handle form submission
    console.log(formData);
  };

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  return (
    <form onSubmit={handleSubmit}>
      <input
        type="text"
        name="name"
        value={formData.name}
        onChange={handleChange}
        placeholder="Name"
        required
      />
      <input
        type="email"
        name="email"
        value={formData.email}
        onChange={handleChange}
        placeholder="Email"
        required
      />
      <button type="submit">Submit</button>
    </form>
  );
};
```

## Modal Component

```tsx
import React, { useEffect } from 'react';

interface ModalProps {
  isOpen: boolean;
  onClose: () => void;
  title: string;
  children: React.ReactNode;
}

export const Modal: React.FC<ModalProps> = ({ 
  isOpen, 
  onClose, 
  title, 
  children 
}) => {
  useEffect(() => {
    const handleEscape = (e: KeyboardEvent) => {
      if (e.key === 'Escape') onClose();
    };

    if (isOpen) {
      document.addEventListener('keydown', handleEscape);
      document.body.style.overflow = 'hidden';
    }

    return () => {
      document.removeEventListener('keydown', handleEscape);
      document.body.style.overflow = 'unset';
    };
  }, [isOpen, onClose]);

  if (!isOpen) return null;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <div className="modal-header">
          <h2>{title}</h2>
          <button onClick={onClose}>×</button>
        </div>
        <div className="modal-body">{children}</div>
      </div>
    </div>
  );
};
```

## List Component with Virtualization

```tsx
import React, { useMemo } from 'react';

interface ListItem {
  id: string;
  name: string;
}

interface ListProps {
  items: ListItem[];
  itemHeight?: number;
  containerHeight?: number;
}

export const VirtualizedList: React.FC<ListProps> = ({
  items,
  itemHeight = 50,
  containerHeight = 400,
}) => {
  const visibleItems = useMemo(() => {
    const visibleCount = Math.ceil(containerHeight / itemHeight);
    return items.slice(0, visibleCount);
  }, [items, itemHeight, containerHeight]);

  return (
    <div style={{ height: containerHeight, overflow: 'auto' }}>
      {visibleItems.map((item) => (
        <div key={item.id} style={{ height: itemHeight }}>
          {item.name}
        </div>
      ))}
    </div>
  );
};
```

---

> Created with ❤️ by Praveen Singh

