#!/bin/bash

# Development Environment Setup Script
# This script sets up a development environment with common tools

set -e  # Exit on error

echo "🚀 Setting up development environment..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${YELLOW}ℹ${NC} $1"
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install Node.js via nvm
install_node() {
    if command_exists node; then
        print_info "Node.js already installed: $(node --version)"
        return
    fi

    print_info "Installing Node.js via nvm..."
    if [ ! -d "$HOME/.nvm" ]; then
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    fi

    nvm install --lts
    nvm use --lts
    nvm alias default node
    print_success "Node.js installed: $(node --version)"
}

# Install pnpm
install_pnpm() {
    if command_exists pnpm; then
        print_info "pnpm already installed: $(pnpm --version)"
        return
    fi

    print_info "Installing pnpm..."
    npm install -g pnpm
    print_success "pnpm installed: $(pnpm --version)"
}

# Install global npm packages
install_global_packages() {
    print_info "Installing global npm packages..."
    npm install -g \
        typescript \
        ts-node \
        nodemon \
        eslint \
        prettier \
        @types/node \
        create-react-app \
        create-next-app
    print_success "Global packages installed"
}

# Install Docker (if not installed)
install_docker() {
    if command_exists docker; then
        print_info "Docker already installed: $(docker --version)"
        return
    fi

    print_info "Docker installation requires sudo. Skipping..."
    print_info "Install Docker manually: https://docs.docker.com/get-docker/"
}

# Install Git (if not installed)
install_git() {
    if command_exists git; then
        print_info "Git already installed: $(git --version)"
        return
    fi

    print_info "Installing Git..."
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get update && sudo apt-get install -y git
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install git
    fi
    print_success "Git installed: $(git --version)"
}

# Setup Git configuration
setup_git() {
    if [ -z "$(git config --global user.name)" ]; then
        print_info "Git user.name not set. Please configure:"
        read -p "Enter your name: " git_name
        git config --global user.name "$git_name"
    fi

    if [ -z "$(git config --global user.email)" ]; then
        print_info "Git user.email not set. Please configure:"
        read -p "Enter your email: " git_email
        git config --global user.email "$git_email"
    fi

    # Set default branch name
    git config --global init.defaultBranch main
    
    # Set pull rebase
    git config --global pull.rebase false
    
    print_success "Git configured"
}

# Create common directories
create_directories() {
    print_info "Creating common directories..."
    mkdir -p ~/Projects
    mkdir -p ~/Documents/Code
    print_success "Directories created"
}

# Main installation function
main() {
    echo ""
    print_info "Starting installation..."
    echo ""

    install_git
    setup_git
    install_node
    install_pnpm
    install_global_packages
    create_directories

    echo ""
    print_success "Development environment setup complete! 🎉"
    echo ""
    print_info "Installed versions:"
    echo "  Node.js: $(node --version 2>/dev/null || echo 'Not installed')"
    echo "  npm: $(npm --version 2>/dev/null || echo 'Not installed')"
    echo "  pnpm: $(pnpm --version 2>/dev/null || echo 'Not installed')"
    echo "  Git: $(git --version 2>/dev/null || echo 'Not installed')"
    echo ""
}

# Run main function
main

