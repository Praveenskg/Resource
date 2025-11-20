# 📘 TypeScript Utility Types & Patterns

## Built-in Utility Types

### Partial

```typescript
interface User {
  name: string;
  email: string;
  age: number;
}

type PartialUser = Partial<User>;
// { name?: string; email?: string; age?: number; }
```

### Required

```typescript
interface User {
  name?: string;
  email?: string;
}

type RequiredUser = Required<User>;
// { name: string; email: string; }
```

### Pick

```typescript
interface User {
  name: string;
  email: string;
  age: number;
}

type UserBasic = Pick<User, 'name' | 'email'>;
// { name: string; email: string; }
```

### Omit

```typescript
interface User {
  name: string;
  email: string;
  age: number;
}

type UserWithoutAge = Omit<User, 'age'>;
// { name: string; email: string; }
```

### Record

```typescript
type UserRoles = Record<string, boolean>;
// { [key: string]: boolean; }

const roles: UserRoles = {
  admin: true,
  user: false,
};
```

### Readonly

```typescript
interface User {
  name: string;
  email: string;
}

type ReadonlyUser = Readonly<User>;
// { readonly name: string; readonly email: string; }
```

## Custom Utility Types

### Deep Partial

```typescript
type DeepPartial<T> = {
  [P in keyof T]?: T[P] extends object ? DeepPartial<T[P]> : T[P];
};
```

### Deep Readonly

```typescript
type DeepReadonly<T> = {
  readonly [P in keyof T]: T[P] extends object ? DeepReadonly<T[P]> : T[P];
};
```

### Nullable

```typescript
type Nullable<T> = T | null;
```

### Optional

```typescript
type Optional<T, K extends keyof T> = Omit<T, K> & Partial<Pick<T, K>>;
```

### ValueOf

```typescript
type ValueOf<T> = T[keyof T];
```

### KeysOfType

```typescript
type KeysOfType<T, U> = {
  [K in keyof T]: T[K] extends U ? K : never;
}[keyof T];
```

## Type Guards

```typescript
function isString(value: unknown): value is string {
  return typeof value === 'string';
}

function isNumber(value: unknown): value is number {
  return typeof value === 'number' && !isNaN(value);
}

function isArray<T>(value: unknown): value is T[] {
  return Array.isArray(value);
}

function isObject(value: unknown): value is Record<string, unknown> {
  return typeof value === 'object' && value !== null && !Array.isArray(value);
}
```

## Assertion Functions

```typescript
function assertIsString(value: unknown): asserts value is string {
  if (typeof value !== 'string') {
    throw new Error('Value is not a string');
  }
}

function assertIsNumber(value: unknown): asserts value is number {
  if (typeof value !== 'number' || isNaN(value)) {
    throw new Error('Value is not a number');
  }
}
```

## Generic Constraints

```typescript
function getProperty<T, K extends keyof T>(obj: T, key: K): T[K] {
  return obj[key];
}

function createArray<T extends string | number>(length: number, value: T): T[] {
  return Array(length).fill(value);
}
```

## Mapped Types

```typescript
type Optional<T> = {
  [K in keyof T]?: T[K];
};

type Readonly<T> = {
  readonly [K in keyof T]: T[K];
};

type Getters<T> = {
  [K in keyof T as `get${Capitalize<string & K>}`]: () => T[K];
};
```

## Conditional Types

```typescript
type NonNullable<T> = T extends null | undefined ? never : T;

type ReturnType<T> = T extends (...args: any[]) => infer R ? R : any;

type Parameters<T> = T extends (...args: infer P) => any ? P : never;
```

## Template Literal Types

```typescript
type EventName<T extends string> = `on${Capitalize<T>}`;

type ApiEndpoint = `api/${string}`;

type HttpMethod = 'GET' | 'POST' | 'PUT' | 'DELETE';

type ApiRoute = `${HttpMethod} /api/${string}`;
```

---

> Created with ❤️ by Praveen Singh

