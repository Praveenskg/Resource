# ☁️ AWS CLI Commands

## S3

```bash
# List buckets
aws s3 ls

# Create bucket
aws s3 mb s3://my-bucket

# Upload file
aws s3 cp file.txt s3://my-bucket/

# Download file
aws s3 cp s3://my-bucket/file.txt ./

# Sync directory
aws s3 sync ./dist s3://my-bucket/

# Delete file
aws s3 rm s3://my-bucket/file.txt

# Delete bucket
aws s3 rb s3://my-bucket
```

## EC2

```bash
# List instances
aws ec2 describe-instances

# Start instance
aws ec2 start-instances --instance-ids i-1234567890abcdef0

# Stop instance
aws ec2 stop-instances --instance-ids i-1234567890abcdef0

# Terminate instance
aws ec2 terminate-instances --instance-ids i-1234567890abcdef0
```

## Lambda

```bash
# List functions
aws lambda list-functions

# Invoke function
aws lambda invoke --function-name my-function output.json

# Update function
aws lambda update-function-code --function-name my-function --zip-file fileb://function.zip
```

---

> Created with ❤️ by Praveen Singh

