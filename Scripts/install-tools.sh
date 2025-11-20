#!/bin/bash

# Install Common Development Tools
# This script installs various development tools

set -e

echo "🛠️  Installing development tools..."

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_info() {
    echo -e "${YELLOW}ℹ${NC} $1"
}

# Detect OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
    INSTALL_CMD="sudo apt-get install -y"
    UPDATE_CMD="sudo apt-get update"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
    if ! command -v brew &> /dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    INSTALL_CMD="brew install"
    UPDATE_CMD="brew update"
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

# Update package lists
print_info "Updating package lists..."
$UPDATE_CMD

# Install tools
tools=(
    "curl"
    "wget"
    "git"
    "vim"
    "htop"
    "tree"
    "jq"
    "zip"
    "unzip"
    "ssh"
    "rsync"
)

print_info "Installing basic tools..."
for tool in "${tools[@]}"; do
    if command -v "$tool" &> /dev/null; then
        print_info "$tool already installed"
    else
        $INSTALL_CMD "$tool"
        print_success "$tool installed"
    fi
done

# Install Node.js tools
if command -v npm &> /dev/null; then
    print_info "Installing Node.js tools..."
    npm install -g \
        typescript \
        ts-node \
        nodemon \
        eslint \
        prettier \
        http-server \
        serve \
        json-server
    print_success "Node.js tools installed"
fi

# Install Python tools (if Python is available)
if command -v pip3 &> /dev/null; then
    print_info "Installing Python tools..."
    pip3 install --user \
        black \
        flake8 \
        pytest \
        requests
    print_success "Python tools installed"
fi

print_success "All tools installed! 🎉"

