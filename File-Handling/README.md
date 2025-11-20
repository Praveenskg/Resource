# 📁 File Handling

File upload, processing, and optimization patterns.

## 📚 Table of Contents

- [File Upload](#file-upload)
- [Image Processing](#image-processing)
- [PDF Generation](#pdf-generation)

---

## 📤 File Upload

### Multer (Node.js)

```javascript
const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'uploads/');
  },
  filename: (req, file, cb) => {
    const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
    cb(null, file.fieldname + '-' + uniqueSuffix + path.extname(file.originalname));
  }
});

const upload = multer({ 
  storage: storage,
  limits: { fileSize: 5 * 1024 * 1024 }, // 5MB
  fileFilter: (req, file, cb) => {
    const allowedTypes = /jpeg|jpg|png|gif/;
    const extname = allowedTypes.test(path.extname(file.originalname).toLowerCase());
    const mimetype = allowedTypes.test(file.mimetype);
    
    if (extname && mimetype) {
      return cb(null, true);
    }
    cb(new Error('Invalid file type'));
  }
});

app.post('/upload', upload.single('file'), (req, res) => {
  res.json({ file: req.file });
});
```

### React File Upload

```tsx
function FileUpload() {
  const [file, setFile] = useState<File | null>(null);

  const handleUpload = async () => {
    if (!file) return;

    const formData = new FormData();
    formData.append('file', file);

    const response = await fetch('/api/upload', {
      method: 'POST',
      body: formData,
    });

    const result = await response.json();
    console.log('Uploaded:', result);
  };

  return (
    <div>
      <input
        type="file"
        onChange={(e) => setFile(e.target.files?.[0] || null)}
      />
      <button onClick={handleUpload}>Upload</button>
    </div>
  );
}
```

---

## 🖼️ Image Processing

### Sharp (Node.js)

```javascript
const sharp = require('sharp');

// Resize image
await sharp('input.jpg')
  .resize(800, 600)
  .toFile('output.jpg');

// Convert format
await sharp('input.jpg')
  .png()
  .toFile('output.png');

// Optimize
await sharp('input.jpg')
  .jpeg({ quality: 80 })
  .toFile('optimized.jpg');
```

---

## 📄 PDF Generation

### PDFKit (Node.js)

```javascript
const PDFDocument = require('pdfkit');
const fs = require('fs');

const doc = new PDFDocument();
doc.pipe(fs.createWriteStream('output.pdf'));

doc.fontSize(25).text('Hello World', 100, 100);
doc.addPage();
doc.text('Page 2', 100, 100);

doc.end();
```

---

> Created with ❤️ by Praveen Singh

