# 🔍 Regex Patterns & Text Processing

## 📚 Common Regex Patterns

### Email Validation

```regex
# Simple email
^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$

# RFC 5322 compliant
^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$
```

### URL Validation

```regex
# HTTP/HTTPS URL
^https?://(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$

# Simple URL
^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$
```

### Phone Numbers

```regex
# US Phone Number
^(\+1\s?)?(\([0-9]{3}\)|[0-9]{3})[\s\-]?[0-9]{3}[\s\-]?[0-9]{4}$

# International Phone
^\+(?:[0-9] ?){6,14}[0-9]$
```

### Credit Cards

```regex
# Visa
^4[0-9]{12}(?:[0-9]{3})?$

# Mastercard
^5[1-5][0-9]{14}$

# American Express
^3[47][0-9]{13}$
```

### Dates

```regex
# YYYY-MM-DD
^\d{4}-\d{2}-\d{2}$

# DD/MM/YYYY
^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$

# MM/DD/YYYY
^(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])/\d{4}$
```

### Passwords

```regex
# At least 8 characters, 1 uppercase, 1 lowercase, 1 number
^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$

# At least 8 characters, 1 uppercase, 1 lowercase, 1 number, 1 special char
^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$
```

### IP Addresses

```regex
# IPv4
^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$

# IPv6
^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$
```

### Common Patterns

```regex
# Numbers only
^\d+$

# Letters only
^[a-zA-Z]+$

# Alphanumeric
^[a-zA-Z0-9]+$

# Hex color code
^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$

# UUID
^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

# HTML tags
<([a-z]+)([^<]+)*(?:>(.*)<\/\1>|\s+\/>)

# Time (HH:MM)
^([0-1][0-9]|2[0-3]):[0-5][0-9]$
```

## 🔧 Regex Metacharacters

| Character | Description | Example |
|-----------|-------------|---------|
| `.` | Matches any character except newline | `a.c` matches "abc", "a1c" |
| `^` | Start of string | `^hello` matches "hello world" |
| `$` | End of string | `world$` matches "hello world" |
| `*` | Zero or more of preceding | `ab*` matches "a", "ab", "abb" |
| `+` | One or more of preceding | `ab+` matches "ab", "abb" |
| `?` | Zero or one of preceding | `ab?` matches "a", "ab" |
| `{n}` | Exactly n occurrences | `a{3}` matches "aaa" |
| `{n,}` | n or more occurrences | `a{3,}` matches "aaa", "aaaa" |
| `{n,m}` | Between n and m occurrences | `a{2,4}` matches "aa", "aaa", "aaaa" |
| `\|` | OR operator | `a\|b` matches "a" or "b" |
| `[]` | Character class | `[abc]` matches "a", "b", or "c" |
| `[^]` | Negated character class | `[^abc]` matches anything except a, b, c |
| `()` | Grouping | `(ab)+` matches "ab", "abab" |
| `\d` | Digit (0-9) | `\d+` matches "123" |
| `\D` | Non-digit | `\D+` matches "abc" |
| `\w` | Word character (a-z, A-Z, 0-9, _) | `\w+` matches "hello123" |
| `\W` | Non-word character | `\W+` matches "!@#" |
| `\s` | Whitespace | `\s+` matches spaces, tabs |
| `\S` | Non-whitespace | `\S+` matches "hello" |
| `\b` | Word boundary | `\bword\b` matches "word" but not "words" |
| `\B` | Non-word boundary | `\Bword\B` matches "sword" but not "word" |

## 📝 Text Processing with sed

### Basic sed Commands

```bash
# Replace first occurrence per line
sed 's/old/new/' file.txt

# Replace all occurrences
sed 's/old/new/g' file.txt

# Replace with case-insensitive
sed 's/old/new/gi' file.txt

# Delete lines matching pattern
sed '/pattern/d' file.txt

# Delete lines 1-5
sed '1,5d' file.txt

# Print lines matching pattern
sed -n '/pattern/p' file.txt

# Insert line before match
sed '/pattern/i\New line' file.txt

# Append line after match
sed '/pattern/a\New line' file.txt

# Replace in-place (modify file)
sed -i 's/old/new/g' file.txt

# Backup before modifying
sed -i.bak 's/old/new/g' file.txt
```

### sed Examples

```bash
# Remove empty lines
sed '/^$/d' file.txt

# Remove leading whitespace
sed 's/^[ \t]*//' file.txt

# Remove trailing whitespace
sed 's/[ \t]*$//' file.txt

# Remove HTML tags
sed 's/<[^>]*>//g' file.html

# Convert tabs to spaces
sed 's/\t/    /g' file.txt

# Number lines
sed = file.txt | sed 'N;s/\n/\t/'

# Extract email addresses
sed -n 's/.*\([a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]*\.[a-zA-Z]*\).*/\1/p' file.txt
```

## 🔨 Text Processing with awk

### Basic awk Commands

```bash
# Print entire file
awk '{print}' file.txt

# Print first column
awk '{print $1}' file.txt

# Print lines matching pattern
awk '/pattern/ {print}' file.txt

# Print lines where column 3 > 100
awk '$3 > 100 {print}' file.txt

# Print with custom separator
awk -F: '{print $1}' /etc/passwd

# Print with formatting
awk '{printf "Name: %s, Age: %d\n", $1, $2}' file.txt
```

### awk Examples

```bash
# Sum column values
awk '{sum+=$1} END {print sum}' file.txt

# Count lines
awk 'END {print NR}' file.txt

# Print unique values in column
awk '{print $1}' file.txt | sort | uniq

# Find average
awk '{sum+=$1; count++} END {print sum/count}' file.txt

# Print lines between two patterns
awk '/start/,/end/' file.txt

# Print specific columns
awk '{print $2, $4}' file.txt

# Conditional printing
awk '$3 > 50 {print $1, $3}' file.txt
```

## 🎯 Practical Examples

### Extract Data

```bash
# Extract email addresses
grep -oE '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' file.txt

# Extract URLs
grep -oE 'https?://[^\s]+' file.txt

# Extract phone numbers
grep -oE '(\+?1[-.\s]?)?\(?[0-9]{3}\)?[-.\s]?[0-9]{3}[-.\s]?[0-9]{4}' file.txt

# Extract IP addresses
grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' file.txt
```

### Clean Data

```bash
# Remove duplicate lines
sort file.txt | uniq

# Remove empty lines
grep -v '^$' file.txt

# Remove comments
sed '/^#/d' file.txt

# Remove leading/trailing whitespace
sed 's/^[ \t]*//;s/[ \t]*$//' file.txt

# Convert to lowercase
tr '[:upper:]' '[:lower:]' < file.txt

# Remove special characters
sed 's/[^a-zA-Z0-9 ]//g' file.txt
```

### Transform Data

```bash
# Replace text in multiple files
find . -type f -name "*.txt" -exec sed -i 's/old/new/g' {} +

# Add prefix to each line
sed 's/^/prefix: /' file.txt

# Add suffix to each line
sed 's/$/ :suffix/' file.txt

# Reverse lines
tac file.txt

# Sort numerically
sort -n file.txt

# Sort by column
sort -k2 file.txt
```

## 🔍 grep Patterns

```bash
# Case-insensitive search
grep -i "pattern" file.txt

# Show line numbers
grep -n "pattern" file.txt

# Show only filenames
grep -l "pattern" *.txt

# Recursive search
grep -r "pattern" directory/

# Invert match
grep -v "pattern" file.txt

# Count matches
grep -c "pattern" file.txt

# Show context (before/after)
grep -A 3 -B 3 "pattern" file.txt

# Extended regex
grep -E "pattern1|pattern2" file.txt

# Perl regex
grep -P "\d+" file.txt
```

---

> Created with ❤️ by Praveen Singh

