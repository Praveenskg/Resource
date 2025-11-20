# 🐍 Python Resources

Python commands, patterns, and best practices.

## 📚 Table of Contents

- [Virtual Environments](#virtual-environments)
- [Package Management](#package-management)
- [Testing](#testing)
- [Common Patterns](#common-patterns)

---

## 🏗️ Virtual Environments

### venv

```bash
# Create virtual environment
python -m venv venv

# Activate (Linux/Mac)
source venv/bin/activate

# Activate (Windows)
venv\Scripts\activate

# Deactivate
deactivate
```

### virtualenv

```bash
# Install
pip install virtualenv

# Create
virtualenv venv

# Activate
source venv/bin/activate  # Linux/Mac
venv\Scripts\activate     # Windows
```

---

## 📦 Package Management

### pip

```bash
# Install package
pip install package-name

# Install from requirements.txt
pip install -r requirements.txt

# List installed packages
pip list

# Show package info
pip show package-name

# Uninstall
pip uninstall package-name

# Freeze dependencies
pip freeze > requirements.txt
```

### poetry

```bash
# Install Poetry
curl -sSL https://install.python-poetry.org | python3 -

# Initialize project
poetry init

# Install dependencies
poetry install

# Add dependency
poetry add package-name

# Add dev dependency
poetry add --dev package-name

# Update dependencies
poetry update

# Export requirements.txt
poetry export -f requirements.txt --output requirements.txt
```

---

## 🧪 Testing

### pytest

```bash
# Install
pip install pytest

# Run tests
pytest

# Run with coverage
pytest --cov=src --cov-report=html

# Run specific test
pytest tests/test_example.py

# Run with verbose output
pytest -v
```

### Test Example

```python
# test_example.py
import pytest
from src.calculator import add, subtract

def test_add():
    assert add(2, 3) == 5

def test_subtract():
    assert subtract(5, 2) == 3

@pytest.fixture
def sample_data():
    return {'key': 'value'}

def test_with_fixture(sample_data):
    assert sample_data['key'] == 'value'
```

---

## 💡 Common Patterns

### List Comprehensions

```python
# Basic
squares = [x**2 for x in range(10)]

# With condition
evens = [x for x in range(10) if x % 2 == 0]

# Nested
matrix = [[i*j for j in range(3)] for i in range(3)]
```

### Dictionary Comprehensions

```python
# Basic
squares_dict = {x: x**2 for x in range(10)}

# With condition
even_squares = {x: x**2 for x in range(10) if x % 2 == 0}
```

### Context Managers

```python
# File handling
with open('file.txt', 'r') as f:
    content = f.read()

# Custom context manager
from contextlib import contextmanager

@contextmanager
def custom_context():
    print("Entering")
    yield
    print("Exiting")
```

### Decorators

```python
def my_decorator(func):
    def wrapper(*args, **kwargs):
        print("Before function")
        result = func(*args, **kwargs)
        print("After function")
        return result
    return wrapper

@my_decorator
def my_function():
    print("Function execution")
```

---

> Created with ❤️ by Praveen Singh

