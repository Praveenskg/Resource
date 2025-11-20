# 🍃 MongoDB Advanced Commands

## Connection

```bash
# Connect to MongoDB
mongosh

# Connect with connection string
mongosh "mongodb://username:password@hostname:27017/database_name"

# Connect with authentication
mongosh -u username -p password --authenticationDatabase admin

# Connect to specific database
mongosh database_name
```

## Database Operations

```javascript
// Show databases
show dbs

// Use database
use database_name

// Show current database
db.getName()

// Drop database
db.dropDatabase()

// Get database stats
db.stats()
```

## Collection Operations

```javascript
// Create collection
db.createCollection("users")

// Create collection with options
db.createCollection("users", {
  capped: true,
  size: 100000,
  max: 5000
})

// Show collections
show collections

// Drop collection
db.users.drop()

// Rename collection
db.users.renameCollection("customers")

// Get collection stats
db.users.stats()
```

## Query Operations

### Find Documents

```javascript
// Find all
db.users.find()

// Find one
db.users.findOne({ name: "John" })

// Find with conditions
db.users.find({ age: { $gte: 18 } })
db.users.find({ age: { $lt: 65 } })
db.users.find({ age: { $in: [25, 30, 35] } })
db.users.find({ age: { $nin: [25, 30, 35] } })
db.users.find({ age: { $ne: 30 } })

// Logical operators
db.users.find({ $or: [{ age: 25 }, { age: 30 }] })
db.users.find({ $and: [{ age: { $gte: 18 } }, { age: { $lte: 65 } }] })
db.users.find({ $not: { age: 30 } })
db.users.find({ $nor: [{ age: 25 }, { age: 30 }] })

// Regex
db.users.find({ name: /^J/ })  // Starts with J
db.users.find({ name: /ohn$/ })  // Ends with ohn
db.users.find({ name: /ohn/i })  // Case insensitive

// Array queries
db.users.find({ tags: "javascript" })
db.users.find({ tags: { $all: ["javascript", "nodejs"] } })
db.users.find({ tags: { $size: 3 } })
db.users.find({ "address.city": "New York" })  // Nested fields

// Projection
db.users.find({}, { name: 1, email: 1 })  // Include only name and email
db.users.find({}, { password: 0 })  // Exclude password

// Sorting
db.users.find().sort({ age: 1 })  // Ascending
db.users.find().sort({ age: -1 })  // Descending
db.users.find().sort({ age: 1, name: -1 })  // Multiple fields

// Limit and skip
db.users.find().limit(10)
db.users.find().skip(20).limit(10)  // Pagination

// Count
db.users.countDocuments({ age: { $gte: 18 } })
db.users.estimatedDocumentCount()
```

### Update Operations

```javascript
// Update one
db.users.updateOne(
  { name: "John" },
  { $set: { email: "newemail@example.com" } }
)

// Update many
db.users.updateMany(
  { age: { $lt: 18 } },
  { $set: { status: "minor" } }
)

// Replace document
db.users.replaceOne(
  { name: "John" },
  { name: "John", email: "new@example.com", age: 30 }
)

// Update operators
db.users.updateOne(
  { name: "John" },
  { 
    $set: { email: "new@example.com" },
    $inc: { age: 1 },
    $push: { tags: "newtag" },
    $pull: { tags: "oldtag" },
    $unset: { oldField: "" }
  }
)

// Upsert (insert if not exists)
db.users.updateOne(
  { name: "John" },
  { $set: { email: "john@example.com" } },
  { upsert: true }
)
```

### Delete Operations

```javascript
// Delete one
db.users.deleteOne({ name: "John" })

// Delete many
db.users.deleteMany({ age: { $lt: 18 } })

// Delete all
db.users.deleteMany({})
```

## Aggregation Pipeline

```javascript
// Basic aggregation
db.users.aggregate([
  { $match: { age: { $gte: 18 } } },
  { $group: { _id: "$status", count: { $sum: 1 } } },
  { $sort: { count: -1 } }
])

// Aggregation stages
db.users.aggregate([
  // Match documents
  { $match: { status: "active" } },
  
  // Project fields
  { $project: { name: 1, email: 1, age: 1 } },
  
  // Group documents
  { $group: { 
    _id: "$status", 
    total: { $sum: 1 },
    avgAge: { $avg: "$age" },
    maxAge: { $max: "$age" },
    minAge: { $min: "$age" }
  }},
  
  // Sort results
  { $sort: { total: -1 } },
  
  // Limit results
  { $limit: 10 },
  
  // Skip documents
  { $skip: 5 },
  
  // Lookup (join)
  { $lookup: {
    from: "orders",
    localField: "_id",
    foreignField: "user_id",
    as: "orders"
  }},
  
  // Unwind array
  { $unwind: "$tags" },
  
  // Add computed fields
  { $addFields: {
    fullName: { $concat: ["$firstName", " ", "$lastName"] }
  }}
])
```

## Indexes

```javascript
// Create index
db.users.createIndex({ email: 1 })
db.users.createIndex({ name: 1, age: -1 })  // Compound index
db.users.createIndex({ email: 1 }, { unique: true })  // Unique index
db.users.createIndex({ "address.city": 1 })  // Index on nested field
db.users.createIndex({ tags: 1 })  // Index on array

// Create text index
db.users.createIndex({ name: "text", description: "text" })

// Create TTL index (auto-delete after time)
db.sessions.createIndex({ createdAt: 1 }, { expireAfterSeconds: 3600 })

// List indexes
db.users.getIndexes()

// Drop index
db.users.dropIndex({ email: 1 })
db.users.dropIndex("email_1")
db.users.dropIndexes()  // Drop all indexes except _id
```

## Text Search

```javascript
// Create text index
db.articles.createIndex({ title: "text", content: "text" })

// Text search
db.articles.find({ $text: { $search: "mongodb tutorial" } })

// Text search with score
db.articles.find(
  { $text: { $search: "mongodb tutorial" } },
  { score: { $meta: "textScore" } }
).sort({ score: { $meta: "textScore" } })
```

## Backup & Restore

```bash
# Backup database
mongodump --db database_name --out /backup/path

# Backup specific collection
mongodump --db database_name --collection users --out /backup/path

# Backup with authentication
mongodump --host hostname:27017 --username user --password pass --db database_name --out /backup/path

# Restore database
mongorestore --db database_name /backup/path/database_name

# Restore specific collection
mongorestore --db database_name --collection users /backup/path/database_name/users.bson

# Export to JSON
mongoexport --db database_name --collection users --out users.json

# Export with query
mongoexport --db database_name --collection users --query '{"age": {"$gte": 18}}' --out users.json

# Import from JSON
mongoimport --db database_name --collection users --file users.json

# Import with options
mongoimport --db database_name --collection users --file users.json --drop --upsert
```

## Useful Queries

```javascript
// Find documents with array containing value
db.users.find({ tags: "javascript" })

// Find documents with array size
db.users.find({ tags: { $size: 3 } })

// Find documents with nested object
db.users.find({ "address.city": "New York" })

// Find documents with date range
db.users.find({
  created_at: {
    $gte: new Date("2024-01-01"),
    $lt: new Date("2024-12-31")
  }
})

// Find and update
db.users.findOneAndUpdate(
  { name: "John" },
  { $set: { email: "new@example.com" } },
  { returnDocument: "after" }
)

// Find and delete
db.users.findOneAndDelete({ name: "John" })

// Distinct values
db.users.distinct("status")

// Random sample
db.users.aggregate([{ $sample: { size: 10 } }])
```

---

> Created with ❤️ by Praveen Singh

