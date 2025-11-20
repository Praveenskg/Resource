# 🗄️ ORM Patterns

Prisma, TypeORM, and Sequelize patterns.

## 📚 Table of Contents

- [Prisma](#prisma)
- [TypeORM](#typeorm)
- [Sequelize](#sequelize)

---

## 🟢 Prisma

### Schema

```prisma
// schema.prisma
model User {
  id        Int      @id @default(autoincrement())
  email     String   @unique
  name      String?
  posts     Post[]
  createdAt DateTime @default(now())
}

model Post {
  id        Int      @id @default(autoincrement())
  title     String
  content   String?
  authorId  Int
  author    User     @relation(fields: [authorId], references: [id])
  createdAt DateTime @default(now())
}
```

### Queries

```typescript
// Create
const user = await prisma.user.create({
  data: {
    email: 'user@example.com',
    name: 'John',
  },
});

// Find
const users = await prisma.user.findMany({
  where: { email: 'user@example.com' },
  include: { posts: true },
});

// Update
const updated = await prisma.user.update({
  where: { id: 1 },
  data: { name: 'John Updated' },
});

// Delete
await prisma.user.delete({
  where: { id: 1 },
});
```

---

## 🔵 TypeORM

### Entity

```typescript
import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from 'typeorm';

@Entity()
export class User {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  email: string;

  @Column({ nullable: true })
  name: string;

  @OneToMany(() => Post, post => post.author)
  posts: Post[];
}
```

### Queries

```typescript
// Create
const user = userRepository.create({
  email: 'user@example.com',
  name: 'John',
});
await userRepository.save(user);

// Find
const users = await userRepository.find({
  where: { email: 'user@example.com' },
  relations: ['posts'],
});

// Update
await userRepository.update(1, { name: 'John Updated' });

// Delete
await userRepository.delete(1);
```

---

## 🟡 Sequelize

### Model

```javascript
const User = sequelize.define('User', {
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  name: {
    type: DataTypes.STRING,
    allowNull: true,
  },
});
```

### Queries

```javascript
// Create
const user = await User.create({
  email: 'user@example.com',
  name: 'John',
});

// Find
const users = await User.findAll({
  where: { email: 'user@example.com' },
});

// Update
await User.update(
  { name: 'John Updated' },
  { where: { id: 1 } }
);

// Delete
await User.destroy({ where: { id: 1 } });
```

---

> Created with ❤️ by Praveen Singh

