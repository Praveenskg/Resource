# 🐘 PostgreSQL Advanced Commands

## Connection Strings

```bash
# Local connection
psql -U username -d database_name

# Remote connection
psql -h hostname -p 5432 -U username -d database_name

# Connection string format
postgresql://username:password@hostname:port/database_name
```

## User & Role Management

```sql
-- Create user
CREATE USER username WITH PASSWORD 'password';

-- Create user with privileges
CREATE USER username WITH PASSWORD 'password' CREATEDB CREATEROLE;

-- Grant privileges
GRANT ALL PRIVILEGES ON DATABASE dbname TO username;
GRANT SELECT, INSERT, UPDATE ON TABLE table_name TO username;

-- Revoke privileges
REVOKE ALL PRIVILEGES ON DATABASE dbname FROM username;

-- Alter user
ALTER USER username WITH PASSWORD 'newpassword';
ALTER USER username CREATEDB;

-- Drop user
DROP USER username;

-- List users
\du
SELECT * FROM pg_user;
```

## Database Management

```sql
-- Create database
CREATE DATABASE dbname;
CREATE DATABASE dbname WITH OWNER = username ENCODING = 'UTF8';

-- Drop database
DROP DATABASE dbname;

-- Rename database
ALTER DATABASE oldname RENAME TO newname;

-- List databases
\l
SELECT datname FROM pg_database;
```

## Table Operations

```sql
-- Create table with constraints
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INTEGER CHECK (age >= 0),
    status VARCHAR(20) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add column
ALTER TABLE users ADD COLUMN phone VARCHAR(20);

-- Drop column
ALTER TABLE users DROP COLUMN phone;

-- Rename column
ALTER TABLE users RENAME COLUMN oldname TO newname;

-- Modify column type
ALTER TABLE users ALTER COLUMN age TYPE INTEGER;

-- Add constraint
ALTER TABLE users ADD CONSTRAINT email_format CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

-- Drop constraint
ALTER TABLE users DROP CONSTRAINT constraint_name;

-- Rename table
ALTER TABLE oldname RENAME TO newname;

-- Truncate table
TRUNCATE TABLE users;
TRUNCATE TABLE users CASCADE; -- Also truncate dependent tables
```

## Indexes

```sql
-- Create index
CREATE INDEX idx_email ON users(email);
CREATE INDEX idx_name_age ON users(name, age); -- Composite index
CREATE UNIQUE INDEX idx_unique_email ON users(email);

-- Create partial index
CREATE INDEX idx_active_users ON users(email) WHERE status = 'active';

-- Create expression index
CREATE INDEX idx_lower_email ON users(LOWER(email));

-- List indexes
\di
SELECT * FROM pg_indexes WHERE tablename = 'users';

-- Drop index
DROP INDEX idx_email;
```

## Views

```sql
-- Create view
CREATE VIEW active_users AS
SELECT id, username, email
FROM users
WHERE status = 'active';

-- Create materialized view
CREATE MATERIALIZED VIEW user_stats AS
SELECT status, COUNT(*) as count
FROM users
GROUP BY status;

-- Refresh materialized view
REFRESH MATERIALIZED VIEW user_stats;

-- Drop view
DROP VIEW active_users;
```

## Functions & Procedures

```sql
-- Create function
CREATE OR REPLACE FUNCTION get_user_count()
RETURNS INTEGER AS $$
BEGIN
    RETURN (SELECT COUNT(*) FROM users);
END;
$$ LANGUAGE plpgsql;

-- Create function with parameters
CREATE OR REPLACE FUNCTION get_user_by_email(user_email VARCHAR)
RETURNS TABLE(id INTEGER, username VARCHAR, email VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT u.id, u.username, u.email
    FROM users u
    WHERE u.email = user_email;
END;
$$ LANGUAGE plpgsql;

-- Call function
SELECT get_user_count();
SELECT * FROM get_user_by_email('john@example.com');
```

## Transactions

```sql
-- Begin transaction
BEGIN;

-- Commit transaction
COMMIT;

-- Rollback transaction
ROLLBACK;

-- Savepoint
BEGIN;
SAVEPOINT sp1;
-- ... operations ...
ROLLBACK TO SAVEPOINT sp1;
COMMIT;
```

## Performance & Monitoring

```sql
-- Explain query plan
EXPLAIN SELECT * FROM users WHERE email = 'john@example.com';
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'john@example.com';

-- Show query statistics
SELECT * FROM pg_stat_statements ORDER BY total_time DESC LIMIT 10;

-- Vacuum database
VACUUM;
VACUUM ANALYZE;
VACUUM FULL;

-- Reindex
REINDEX DATABASE dbname;
REINDEX TABLE users;
```

## Backup & Restore

```bash
# Backup single database
pg_dump -U username -d dbname -F c -f backup.dump

# Backup with compression
pg_dump -U username -d dbname -F c -Z 9 -f backup.dump

# Backup specific schema
pg_dump -U username -d dbname -n schema_name -f schema_backup.sql

# Backup only data (no schema)
pg_dump -U username -d dbname -a -f data_only.sql

# Backup only schema (no data)
pg_dump -U username -d dbname -s -f schema_only.sql

# Restore from custom format
pg_restore -U username -d dbname -c backup.dump

# Restore from SQL file
psql -U username -d dbname < backup.sql

# Backup all databases
pg_dumpall -U username > all_databases.sql

# Restore all databases
psql -U username -f all_databases.sql
```

## Useful Queries

```sql
-- Find largest tables
SELECT 
    schemaname,
    tablename,
    pg_size_pretty(pg_total_relation_size(schemaname||'.'||tablename)) AS size
FROM pg_tables
ORDER BY pg_total_relation_size(schemaname||'.'||tablename) DESC
LIMIT 10;

-- Find slow queries
SELECT 
    query,
    calls,
    total_time,
    mean_time
FROM pg_stat_statements
ORDER BY mean_time DESC
LIMIT 10;

-- Find table sizes
SELECT 
    table_name,
    pg_size_pretty(pg_total_relation_size('"'||table_schema||'"."'||table_name||'"')) AS size
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY pg_total_relation_size('"'||table_schema||'"."'||table_name||'"') DESC;

-- Find duplicate values
SELECT email, COUNT(*) 
FROM users 
GROUP BY email 
HAVING COUNT(*) > 1;

-- Find missing indexes
SELECT 
    schemaname,
    tablename,
    attname,
    n_distinct,
    correlation
FROM pg_stats
WHERE schemaname = 'public'
AND n_distinct > 100
AND correlation < 0.1;
```

---

> Created with ❤️ by Praveen Singh

