# 🎭 State Management

Redux, Zustand, Context API, and state management patterns.

## 📚 Table of Contents

- [Redux](#redux)
- [Zustand](#zustand)
- [Context API](#context-api)

---

## 🔴 Redux

### Store Setup

```typescript
import { createStore } from 'redux';

interface State {
  count: number;
}

const initialState: State = { count: 0 };

function reducer(state = initialState, action: any) {
  switch (action.type) {
    case 'INCREMENT':
      return { ...state, count: state.count + 1 };
    case 'DECREMENT':
      return { ...state, count: state.count - 1 };
    default:
      return state;
  }
}

const store = createStore(reducer);
```

### Redux Toolkit

```typescript
import { createSlice, configureStore } from '@reduxjs/toolkit';

const counterSlice = createSlice({
  name: 'counter',
  initialState: { value: 0 },
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = counterSlice.actions;

const store = configureStore({
  reducer: {
    counter: counterSlice.reducer,
  },
});
```

---

## 🐻 Zustand

### Basic Store

```typescript
import create from 'zustand';

interface Store {
  count: number;
  increment: () => void;
  decrement: () => void;
}

const useStore = create<Store>((set) => ({
  count: 0,
  increment: () => set((state) => ({ count: state.count + 1 })),
  decrement: () => set((state) => ({ count: state.count - 1 })),
}));

// Usage in component
function Counter() {
  const { count, increment, decrement } = useStore();
  return (
    <div>
      <p>{count}</p>
      <button onClick={increment}>+</button>
      <button onClick={decrement}>-</button>
    </div>
  );
}
```

---

## ⚛️ Context API

### Context Setup

```typescript
import { createContext, useContext, useState, ReactNode } from 'react';

interface ContextType {
  count: number;
  increment: () => void;
  decrement: () => void;
}

const CounterContext = createContext<ContextType | undefined>(undefined);

export function CounterProvider({ children }: { children: ReactNode }) {
  const [count, setCount] = useState(0);

  const increment = () => setCount(c => c + 1);
  const decrement = () => setCount(c => c - 1);

  return (
    <CounterContext.Provider value={{ count, increment, decrement }}>
      {children}
    </CounterContext.Provider>
  );
}

export function useCounter() {
  const context = useContext(CounterContext);
  if (!context) {
    throw new Error('useCounter must be used within CounterProvider');
  }
  return context;
}
```

---

> Created with ❤️ by Praveen Singh

