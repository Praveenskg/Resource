# 🗄️ Database Commands Cheat Sheet

Quick reference for common database operations across different database systems.

## 📚 Table of Contents

- [PostgreSQL](#postgresql)
- [MongoDB](#mongodb)
- [MySQL](#mysql)
- [SQLite](#sqlite)
- [Redis](#redis)

---

## 🐘 PostgreSQL

### Connection & Basic Commands

| Command | Description |
|---------|-------------|
| `psql -U username -d database` | Connect to database |
| `psql -h hostname -U username -d database` | Connect to remote database |
| `\l` | List all databases |
| `\c database_name` | Connect to database |
| `\dt` | List all tables |
| `\d table_name` | Describe table structure |
| `\du` | List all users/roles |
| `\q` | Quit psql |
| `\?` | Show help |
| `\h` | Show SQL help |
| `\timing` | Toggle query timing |

### Common SQL Operations

```sql
-- Create database
CREATE DATABASE dbname;

-- Drop database
DROP DATABASE dbname;

-- Create table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert data
INSERT INTO users (name, email) VALUES ('John', 'john@example.com');

-- Select data
SELECT * FROM users;
SELECT name, email FROM users WHERE id = 1;
SELECT * FROM users ORDER BY created_at DESC LIMIT 10;

-- Update data
UPDATE users SET email = 'newemail@example.com' WHERE id = 1;

-- Delete data
DELETE FROM users WHERE id = 1;

-- Join tables
SELECT u.name, p.title 
FROM users u 
INNER JOIN posts p ON u.id = p.user_id;

-- Aggregate functions
SELECT COUNT(*) FROM users;
SELECT AVG(age) FROM users;
SELECT MAX(created_at) FROM users;
SELECT MIN(created_at) FROM users;
SELECT SUM(amount) FROM orders;
```

### Backup & Restore

```bash
# Backup database
pg_dump -U username -d database_name > backup.sql

# Backup specific table
pg_dump -U username -d database_name -t table_name > table_backup.sql

# Backup with custom format
pg_dump -U username -d database_name -F c -f backup.dump

# Restore database
psql -U username -d database_name < backup.sql

# Restore from custom format
pg_restore -U username -d database_name backup.dump

# Backup all databases
pg_dumpall -U username > all_databases.sql
```

---

## 🍃 MongoDB

### Connection & Basic Commands

```bash
# Connect to MongoDB
mongosh
mongosh "mongodb://localhost:27017"
mongosh -u username -p password --authenticationDatabase admin

# Show databases
show dbs

# Use database
use database_name

# Show collections
show collections

# Show current database
db.getName()
```

### CRUD Operations

```javascript
// Insert documents
db.users.insertOne({
  name: "John Doe",
  email: "john@example.com",
  age: 30,
  created_at: new Date()
});

db.users.insertMany([
  { name: "Alice", email: "alice@example.com" },
  { name: "Bob", email: "bob@example.com" }
]);

// Find documents
db.users.find()
db.users.findOne({ name: "John" })
db.users.find({ age: { $gte: 18 } })
db.users.find({ name: /^J/ }) // Regex
db.users.find().limit(10).sort({ created_at: -1 })

// Update documents
db.users.updateOne(
  { name: "John" },
  { $set: { email: "newemail@example.com" } }
);

db.users.updateMany(
  { age: { $lt: 18 } },
  { $set: { status: "minor" } }
);

// Delete documents
db.users.deleteOne({ name: "John" })
db.users.deleteMany({ age: { $lt: 18 } })

// Aggregation
db.users.aggregate([
  { $match: { age: { $gte: 18 } } },
  { $group: { _id: "$status", count: { $sum: 1 } } },
  { $sort: { count: -1 } }
]);
```

### Indexes

```javascript
// Create index
db.users.createIndex({ email: 1 })
db.users.createIndex({ name: 1, age: -1 }) // Compound index

// List indexes
db.users.getIndexes()

// Drop index
db.users.dropIndex({ email: 1 })
```

### Backup & Restore

```bash
# Backup database
mongodump --db database_name --out /backup/path

# Backup specific collection
mongodump --db database_name --collection users --out /backup/path

# Restore database
mongorestore --db database_name /backup/path/database_name

# Export to JSON
mongoexport --db database_name --collection users --out users.json

# Import from JSON
mongoimport --db database_name --collection users --file users.json
```

---

## 🐬 MySQL

### Connection & Basic Commands

```bash
# Connect to MySQL
mysql -u username -p
mysql -h hostname -u username -p database_name

# Show databases
SHOW DATABASES;

# Use database
USE database_name;

# Show tables
SHOW TABLES;

# Describe table
DESCRIBE table_name;
```

### Common SQL Operations

```sql
-- Create database
CREATE DATABASE dbname CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Insert
INSERT INTO users (name, email) VALUES ('John', 'john@example.com');

-- Select
SELECT * FROM users;
SELECT * FROM users WHERE id = 1;
SELECT * FROM users LIMIT 10 OFFSET 20;

-- Update
UPDATE users SET email = 'new@example.com' WHERE id = 1;

-- Delete
DELETE FROM users WHERE id = 1;

-- Indexes
CREATE INDEX idx_email ON users(email);
CREATE UNIQUE INDEX idx_unique_email ON users(email);
```

### Backup & Restore

```bash
# Backup database
mysqldump -u username -p database_name > backup.sql

# Backup specific table
mysqldump -u username -p database_name table_name > table_backup.sql

# Backup all databases
mysqldump -u username -p --all-databases > all_databases.sql

# Restore database
mysql -u username -p database_name < backup.sql
```

---

## 📦 SQLite

### Basic Commands

```bash
# Open SQLite database
sqlite3 database.db

# Show tables
.tables

# Describe table
.schema table_name

# Export database
.dump > backup.sql

# Import database
.read backup.sql

# Exit
.exit
```

### Common Operations

```sql
-- Create table
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insert
INSERT INTO users (name, email) VALUES ('John', 'john@example.com');

-- Select
SELECT * FROM users;
SELECT * FROM users WHERE id = 1;

-- Update
UPDATE users SET email = 'new@example.com' WHERE id = 1;

-- Delete
DELETE FROM users WHERE id = 1;
```

---

## 🔴 Redis

### Connection & Basic Commands

```bash
# Connect to Redis
redis-cli
redis-cli -h hostname -p 6379

# Ping server
PING

# Get info
INFO

# Select database (0-15)
SELECT 0
```

### String Operations

```bash
SET key value
GET key
DEL key
EXISTS key
EXPIRE key 60  # Set expiration in seconds
TTL key  # Check time to live
KEYS pattern  # Find keys (use SCAN in production)
```

### Hash Operations

```bash
HSET user:1 name "John" email "john@example.com"
HGET user:1 name
HGETALL user:1
HDEL user:1 email
HKEYS user:1
HVALS user:1
```

### List Operations

```bash
LPUSH list "item1"
RPUSH list "item2"
LPOP list
RPOP list
LRANGE list 0 -1
LLEN list
```

### Set Operations

```bash
SADD set "member1" "member2"
SMEMBERS set
SREM set "member1"
SISMEMBER set "member1"
SCARD set
```

### Sorted Set Operations

```bash
ZADD leaderboard 100 "player1"
ZADD leaderboard 200 "player2"
ZRANGE leaderboard 0 -1 WITHSCORES
ZREVRANGE leaderboard 0 -1 WITHSCORES
ZSCORE leaderboard "player1"
```

### Backup & Restore

```bash
# Save snapshot
BGSAVE

# Get last save time
LASTSAVE

# Flush all data (DANGEROUS!)
FLUSHALL
FLUSHDB
```

---

## 🔧 Useful Tools

### Database GUI Clients

- **PostgreSQL**: pgAdmin, DBeaver, TablePlus
- **MongoDB**: MongoDB Compass, Studio 3T
- **MySQL**: MySQL Workbench, phpMyAdmin, DBeaver
- **Redis**: RedisInsight, Redis Desktop Manager

### Command Line Tools

- `psql` - PostgreSQL client
- `mongosh` - MongoDB shell
- `mysql` - MySQL client
- `sqlite3` - SQLite client
- `redis-cli` - Redis client

---

> Created with ❤️ by Praveen Singh

