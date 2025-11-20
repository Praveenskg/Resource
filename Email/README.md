# 📧 Email Resources

Email templates, SMTP configuration, and sending patterns.

## 📚 Table of Contents

- [Email Templates](#email-templates)
- [SMTP Configuration](#smtp-configuration)
- [Email Services](#email-services)

---

## 📝 Email Templates

### HTML Template

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <style>
    body { font-family: Arial, sans-serif; }
    .container { max-width: 600px; margin: 0 auto; padding: 20px; }
    .header { background-color: #4CAF50; color: white; padding: 20px; }
    .content { padding: 20px; }
    .footer { text-align: center; color: #666; font-size: 12px; }
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <h1>Welcome!</h1>
    </div>
    <div class="content">
      <p>Hello {{name}},</p>
      <p>Thank you for signing up!</p>
    </div>
    <div class="footer">
      <p>&copy; 2025 Company Name</p>
    </div>
  </div>
</body>
</html>
```

### Text Template

```
Hello {{name}},

Thank you for signing up!

Best regards,
Company Name
```

---

## ⚙️ SMTP Configuration

### Node.js (Nodemailer)

```javascript
const nodemailer = require('nodemailer');

const transporter = nodemailer.createTransport({
  host: 'smtp.gmail.com',
  port: 587,
  secure: false,
  auth: {
    user: process.env.EMAIL_USER,
    pass: process.env.EMAIL_PASSWORD,
  },
});

const mailOptions = {
  from: 'sender@example.com',
  to: 'recipient@example.com',
  subject: 'Test Email',
  html: '<h1>Hello World</h1>',
};

transporter.sendMail(mailOptions, (error, info) => {
  if (error) {
    console.error('Error:', error);
  } else {
    console.log('Email sent:', info.messageId);
  }
});
```

---

## 🚀 Email Services

### SendGrid

```javascript
const sgMail = require('@sendgrid/mail');
sgMail.setApiKey(process.env.SENDGRID_API_KEY);

const msg = {
  to: 'recipient@example.com',
  from: 'sender@example.com',
  subject: 'Hello World',
  html: '<h1>Hello World</h1>',
};

sgMail.send(msg);
```

### AWS SES

```javascript
const AWS = require('aws-sdk');
const ses = new AWS.SES({ region: 'us-east-1' });

const params = {
  Source: 'sender@example.com',
  Destination: {
    ToAddresses: ['recipient@example.com'],
  },
  Message: {
    Subject: { Data: 'Hello World' },
    Body: { Html: { Data: '<h1>Hello World</h1>' } },
  },
};

ses.sendEmail(params).promise();
```

---

> Created with ❤️ by Praveen Singh

