# 🔧 sed & awk Examples

## sed (Stream Editor)

### Substitution

```bash
# Basic substitution
sed 's/old/new/' file.txt

# Global substitution (all occurrences)
sed 's/old/new/g' file.txt

# Substitution on specific line
sed '5s/old/new/' file.txt

# Substitution on range of lines
sed '5,10s/old/new/' file.txt

# Substitution with regex
sed 's/[0-9]/X/g' file.txt

# Case-insensitive substitution
sed 's/old/new/gi' file.txt

# Substitution with backreferences
sed 's/\([0-9]\)/Number: \1/' file.txt

# Substitution with multiple patterns
sed -e 's/old1/new1/' -e 's/old2/new2/' file.txt
```

### Deletion

```bash
# Delete lines matching pattern
sed '/pattern/d' file.txt

# Delete specific line
sed '5d' file.txt

# Delete range of lines
sed '5,10d' file.txt

# Delete from line to end
sed '5,$d' file.txt

# Delete empty lines
sed '/^$/d' file.txt

# Delete lines containing pattern
sed '/pattern/d' file.txt

# Delete lines NOT containing pattern
sed '/pattern/!d' file.txt
```

### Insertion

```bash
# Insert line before match
sed '/pattern/i\New line' file.txt

# Insert line after match
sed '/pattern/a\New line' file.txt

# Insert at specific line number
sed '5i\New line' file.txt

# Insert multiple lines
sed '/pattern/i\
Line 1\
Line 2' file.txt
```

### Printing

```bash
# Print specific line
sed -n '5p' file.txt

# Print range of lines
sed -n '5,10p' file.txt

# Print lines matching pattern
sed -n '/pattern/p' file.txt

# Print lines between two patterns
sed -n '/start/,/end/p' file.txt

# Print every nth line
sed -n '1~2p' file.txt  # Every 2nd line
```

### Advanced sed

```bash
# Multiple commands
sed -e 's/old1/new1/' -e 's/old2/new2/' file.txt

# Read commands from file
sed -f script.sed file.txt

# In-place editing
sed -i 's/old/new/g' file.txt

# Backup before editing
sed -i.bak 's/old/new/g' file.txt

# Edit multiple files
sed -i 's/old/new/g' *.txt
```

## awk (Pattern Scanning)

### Basic Printing

```bash
# Print entire line
awk '{print}' file.txt

# Print specific column
awk '{print $1}' file.txt

# Print multiple columns
awk '{print $1, $3}' file.txt

# Print last column
awk '{print $NF}' file.txt

# Print second-to-last column
awk '{print $(NF-1)}' file.txt
```

### Field Separators

```bash
# Custom field separator
awk -F: '{print $1}' /etc/passwd

# Multiple separators
awk -F'[:;]' '{print $1}' file.txt

# Regex as separator
awk -F'[ \t]+' '{print $1}' file.txt

# Using FS variable
awk 'BEGIN{FS=":"} {print $1}' file.txt
```

### Pattern Matching

```bash
# Lines matching pattern
awk '/pattern/ {print}' file.txt

# Lines NOT matching pattern
awk '!/pattern/ {print}' file.txt

# Lines where column matches
awk '$1 == "value" {print}' file.txt

# Numeric comparison
awk '$3 > 100 {print}' file.txt

# Multiple conditions
awk '$1 == "A" && $3 > 50 {print}' file.txt

# Range patterns
awk '/start/,/end/ {print}' file.txt
```

### Variables

```bash
# Built-in variables
awk '{print NR, NF, $0}' file.txt  # Line number, field count, line

# User-defined variables
awk '{sum+=$1} END {print sum}' file.txt

# BEGIN and END blocks
awk 'BEGIN {print "Start"} {print} END {print "End"}' file.txt

# Count lines
awk 'END {print NR}' file.txt

# Count matching lines
awk '/pattern/ {count++} END {print count}' file.txt
```

### Calculations

```bash
# Sum column
awk '{sum+=$1} END {print sum}' file.txt

# Average
awk '{sum+=$1; count++} END {print sum/count}' file.txt

# Maximum
awk 'BEGIN {max=0} {if ($1>max) max=$1} END {print max}' file.txt

# Minimum
awk 'BEGIN {min=999999} {if ($1<min) min=$1} END {print min}' file.txt
```

### String Operations

```bash
# String concatenation
awk '{print $1 $2}' file.txt

# String with separator
awk '{print $1 "-" $2}' file.txt

# String length
awk '{print length($1)}' file.txt

# Substring
awk '{print substr($1, 1, 3)}' file.txt

# String match
awk '$1 ~ /pattern/ {print}' file.txt

# String replacement (gsub)
awk '{gsub(/old/, "new"); print}' file.txt
```

### Formatting

```bash
# printf formatting
awk '{printf "Name: %-10s Age: %3d\n", $1, $2}' file.txt

# Format numbers
awk '{printf "%.2f\n", $1}' file.txt

# Format with width
awk '{printf "%10s %5d\n", $1, $2}' file.txt
```

### Arrays

```bash
# Count occurrences
awk '{count[$1]++} END {for (i in count) print i, count[i]}' file.txt

# Sum by group
awk '{sum[$1]+=$2} END {for (i in sum) print i, sum[i]}' file.txt

# Unique values
awk '!seen[$1]++ {print $1}' file.txt
```

## Practical Examples

### Process Log Files

```bash
# Extract IP addresses from access log
awk '{print $1}' access.log | sort | uniq -c | sort -rn

# Count errors by type
awk '/ERROR/ {count[$5]++} END {for (i in count) print i, count[i]}' app.log

# Extract timestamps
awk '{print $1, $2}' access.log
```

### Process CSV Files

```bash
# Print specific columns
awk -F',' '{print $1, $3}' data.csv

# Filter rows
awk -F',' '$3 > 100 {print}' data.csv

# Calculate totals
awk -F',' '{sum+=$2} END {print sum}' data.csv
```

### Process Text Files

```bash
# Remove empty lines
sed '/^$/d' file.txt

# Remove leading/trailing whitespace
sed 's/^[ \t]*//;s/[ \t]*$//' file.txt

# Number lines
awk '{print NR, $0}' file.txt

# Reverse lines
tac file.txt

# Remove duplicate lines
awk '!seen[$0]++' file.txt
```

### Data Transformation

```bash
# Convert tabs to commas
sed 's/\t/,/g' file.txt

# Convert to uppercase
awk '{print toupper($0)}' file.txt

# Convert to lowercase
awk '{print tolower($0)}' file.txt

# Add line numbers
awk '{printf "%5d: %s\n", NR, $0}' file.txt

# Extract specific fields
awk -F'[:;]' '{print $1, $3}' file.txt
```

### File Processing

```bash
# Process multiple files
awk '{print FILENAME, $0}' *.txt

# Skip header line
awk 'NR > 1 {print}' file.txt

# Print lines between patterns
awk '/start/,/end/' file.txt

# Print every nth line
awk 'NR % 2 == 0' file.txt  # Every 2nd line
```

---

> Created with ❤️ by Praveen Singh

