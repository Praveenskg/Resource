# 🔄 WebSocket Resources

WebSocket connection patterns and real-time communication.

## 📚 Table of Contents

- [Native WebSocket](#native-websocket)
- [Socket.io](#socketio)
- [Connection Management](#connection-management)

---

## 🌐 Native WebSocket

### Client Side

```javascript
const socket = new WebSocket('ws://localhost:3000');

socket.onopen = () => {
  console.log('Connected');
  socket.send('Hello Server');
};

socket.onmessage = (event) => {
  console.log('Message:', event.data);
};

socket.onerror = (error) => {
  console.error('Error:', error);
};

socket.onclose = () => {
  console.log('Disconnected');
};
```

### Server Side (Node.js)

```javascript
const WebSocket = require('ws');
const wss = new WebSocket.Server({ port: 3000 });

wss.on('connection', (ws) => {
  console.log('Client connected');

  ws.on('message', (message) => {
    console.log('Received:', message);
    ws.send(`Echo: ${message}`);
  });

  ws.on('close', () => {
    console.log('Client disconnected');
  });
});
```

---

## 🚀 Socket.io

### Client Side

```javascript
import io from 'socket.io-client';

const socket = io('http://localhost:3000');

socket.on('connect', () => {
  console.log('Connected:', socket.id);
});

socket.emit('message', 'Hello Server');

socket.on('response', (data) => {
  console.log('Response:', data);
});

socket.on('disconnect', () => {
  console.log('Disconnected');
});
```

### Server Side

```javascript
const io = require('socket.io')(3000);

io.on('connection', (socket) => {
  console.log('Client connected:', socket.id);

  socket.on('message', (data) => {
    console.log('Received:', data);
    socket.emit('response', `Echo: ${data}`);
  });

  socket.on('disconnect', () => {
    console.log('Client disconnected:', socket.id);
  });
});
```

---

## 🔧 Connection Management

### Reconnection Logic

```javascript
class WebSocketManager {
  constructor(url) {
    this.url = url;
    this.socket = null;
    this.reconnectAttempts = 0;
    this.maxReconnectAttempts = 5;
  }

  connect() {
    this.socket = new WebSocket(this.url);

    this.socket.onopen = () => {
      console.log('Connected');
      this.reconnectAttempts = 0;
    };

    this.socket.onclose = () => {
      if (this.reconnectAttempts < this.maxReconnectAttempts) {
        this.reconnectAttempts++;
        setTimeout(() => this.connect(), 1000 * this.reconnectAttempts);
      }
    };
  }

  send(data) {
    if (this.socket?.readyState === WebSocket.OPEN) {
      this.socket.send(data);
    }
  }

  disconnect() {
    this.socket?.close();
  }
}
```

---

> Created with ❤️ by Praveen Singh

