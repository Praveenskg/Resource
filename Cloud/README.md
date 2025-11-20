# ☁️ Cloud Platform Commands

## 🚀 Vercel

### Deployment

```bash
# Install Vercel CLI
npm i -g vercel

# Login
vercel login

# Deploy
vercel

# Deploy to production
vercel --prod

# Deploy with environment variables
vercel --env DATABASE_URL=postgres://...

# List deployments
vercel ls

# View logs
vercel logs

# Remove deployment
vercel remove
```

### Configuration

```json
// vercel.json
{
  "version": 2,
  "builds": [
    {
      "src": "package.json",
      "use": "@vercel/next"
    }
  ],
  "routes": [
    {
      "src": "/api/(.*)",
      "dest": "/api/$1"
    }
  ],
  "env": {
    "DATABASE_URL": "@database-url"
  }
}
```

## 🌐 Netlify

### Deployment

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Login
netlify login

# Deploy
netlify deploy

# Deploy to production
netlify deploy --prod

# Open site
netlify open

# View logs
netlify logs

# List sites
netlify sites:list
```

### Configuration

```toml
# netlify.toml
[build]
  command = "npm run build"
  publish = "dist"

[[redirects]]
  from = "/api/*"
  to = "/.netlify/functions/:splat"
  status = 200

[build.environment]
  NODE_VERSION = "18"
```

## ☁️ AWS CLI

### Installation

```bash
# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Configure
aws configure
```

### S3 Commands

```bash
# List buckets
aws s3 ls

# Create bucket
aws s3 mb s3://bucket-name

# Upload file
aws s3 cp file.txt s3://bucket-name/

# Download file
aws s3 cp s3://bucket-name/file.txt ./

# Sync directory
aws s3 sync ./dist s3://bucket-name/

# Delete file
aws s3 rm s3://bucket-name/file.txt
```

### EC2 Commands

```bash
# List instances
aws ec2 describe-instances

# Start instance
aws ec2 start-instances --instance-ids i-1234567890abcdef0

# Stop instance
aws ec2 stop-instances --instance-ids i-1234567890abcdef0

# Create instance
aws ec2 run-instances --image-id ami-12345678 --instance-type t2.micro
```

### Lambda Commands

```bash
# List functions
aws lambda list-functions

# Invoke function
aws lambda invoke --function-name my-function output.json

# Update function code
aws lambda update-function-code --function-name my-function --zip-file fileb://function.zip
```

---

> Created with ❤️ by Praveen Singh

