# 🏗️ Design Patterns

Software design patterns and best practices.

## 📚 Table of Contents

- [Creational Patterns](#creational-patterns)
- [Structural Patterns](#structural-patterns)
- [Behavioral Patterns](#behavioral-patterns)

---

## 🏭 Creational Patterns

### Singleton

```typescript
class Singleton {
  private static instance: Singleton;
  
  private constructor() {}
  
  public static getInstance(): Singleton {
    if (!Singleton.instance) {
      Singleton.instance = new Singleton();
    }
    return Singleton.instance;
  }
}
```

### Factory

```typescript
interface Product {
  operation(): string;
}

class ConcreteProductA implements Product {
  operation(): string {
    return 'Product A';
  }
}

class ConcreteProductB implements Product {
  operation(): string {
    return 'Product B';
  }
}

class Factory {
  createProduct(type: string): Product {
    if (type === 'A') return new ConcreteProductA();
    if (type === 'B') return new ConcreteProductB();
    throw new Error('Unknown product type');
  }
}
```

---

## 🏛️ Structural Patterns

### Adapter

```typescript
interface Target {
  request(): string;
}

class Adaptee {
  specificRequest(): string {
    return 'Adaptee request';
  }
}

class Adapter implements Target {
  constructor(private adaptee: Adaptee) {}
  
  request(): string {
    return this.adaptee.specificRequest();
  }
}
```

### Decorator

```typescript
interface Component {
  operation(): string;
}

class ConcreteComponent implements Component {
  operation(): string {
    return 'ConcreteComponent';
  }
}

class Decorator implements Component {
  constructor(protected component: Component) {}
  
  operation(): string {
    return this.component.operation();
  }
}

class ConcreteDecorator extends Decorator {
  operation(): string {
    return `Decorated(${super.operation()})`;
  }
}
```

---

## 🎭 Behavioral Patterns

### Observer

```typescript
interface Observer {
  update(data: any): void;
}

class Subject {
  private observers: Observer[] = [];
  
  attach(observer: Observer): void {
    this.observers.push(observer);
  }
  
  notify(data: any): void {
    this.observers.forEach(observer => observer.update(data));
  }
}

class ConcreteObserver implements Observer {
  update(data: any): void {
    console.log('Received:', data);
  }
}
```

### Strategy

```typescript
interface Strategy {
  execute(a: number, b: number): number;
}

class AddStrategy implements Strategy {
  execute(a: number, b: number): number {
    return a + b;
  }
}

class MultiplyStrategy implements Strategy {
  execute(a: number, b: number): number {
    return a * b;
  }
}

class Context {
  constructor(private strategy: Strategy) {}
  
  executeStrategy(a: number, b: number): number {
    return this.strategy.execute(a, b);
  }
}
```

---

> Created with ❤️ by Praveen Singh

