# 🔌 GraphQL Resources

GraphQL queries, mutations, and best practices.

## 📚 Table of Contents

- [Queries](#queries)
- [Mutations](#mutations)
- [Schemas](#schemas)
- [Apollo Client](#apollo-client)

---

## 📥 Queries

### Basic Query

```graphql
query GetUser {
  user(id: "1") {
    id
    name
    email
  }
}
```

### Query with Variables

```graphql
query GetUser($userId: ID!) {
  user(id: $userId) {
    id
    name
    email
    posts {
      title
      content
    }
  }
}
```

### Fragments

```graphql
fragment UserFields on User {
  id
  name
  email
}

query GetUsers {
  users {
    ...UserFields
  }
}
```

---

## ✏️ Mutations

### Create Mutation

```graphql
mutation CreateUser($input: UserInput!) {
  createUser(input: $input) {
    id
    name
    email
  }
}
```

### Update Mutation

```graphql
mutation UpdateUser($id: ID!, $input: UserInput!) {
  updateUser(id: $id, input: $input) {
    id
    name
    email
  }
}
```

---

## 📋 Schemas

### Type Definitions

```graphql
type User {
  id: ID!
  name: String!
  email: String!
  posts: [Post!]!
}

type Post {
  id: ID!
  title: String!
  content: String!
  author: User!
}

type Query {
  user(id: ID!): User
  users: [User!]!
  posts: [Post!]!
}

type Mutation {
  createUser(input: UserInput!): User!
  updateUser(id: ID!, input: UserInput!): User!
  deleteUser(id: ID!): Boolean!
}

input UserInput {
  name: String!
  email: String!
}
```

---

## 🚀 Apollo Client

### Setup

```typescript
import { ApolloClient, InMemoryCache, gql } from '@apollo/client';

const client = new ApolloClient({
  uri: 'https://api.example.com/graphql',
  cache: new InMemoryCache(),
});
```

### Query Hook

```typescript
import { useQuery, gql } from '@apollo/client';

const GET_USERS = gql`
  query GetUsers {
    users {
      id
      name
      email
    }
  }
`;

function Users() {
  const { loading, error, data } = useQuery(GET_USERS);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error: {error.message}</p>;

  return (
    <ul>
      {data.users.map(user => (
        <li key={user.id}>{user.name}</li>
      ))}
    </ul>
  );
}
```

### Mutation Hook

```typescript
import { useMutation, gql } from '@apollo/client';

const CREATE_USER = gql`
  mutation CreateUser($input: UserInput!) {
    createUser(input: $input) {
      id
      name
    }
  }
`;

function CreateUser() {
  const [createUser, { loading, error }] = useMutation(CREATE_USER);

  const handleSubmit = async (input: UserInput) => {
    try {
      const { data } = await createUser({ variables: { input } });
      console.log('User created:', data.createUser);
    } catch (err) {
      console.error('Error:', err);
    }
  };

  return <form onSubmit={handleSubmit}>...</form>;
}
```

---

> Created with ❤️ by Praveen Singh

