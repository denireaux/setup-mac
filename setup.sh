#!/usr/bin/env bash
set -e  # Exit immediately if a command fails

# Installation List:
    # Homebrew should already be installed on Mac 
    # Any updates to homebrew so there are no compatibility issues
    # Microsoft Visual Studio code - good, all around code editor
    # Python programming language
    # Git, for version control

if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed."
fi

echo "Updating Homebrew..."
brew update

if ! brew list --cask visual-studio-code &>/dev/null; then
  echo "Installing Visual Studio Code..."
  brew install --cask visual-studio-code
else
  echo "Visual Studio Code already installed."
fi

if ! brew list python &>/dev/null; then
  echo "Installing Python..."
  brew install python
else
  echo "Python already installed."
fi

if ! brew list git &>/dev/null; then
  echo "Installing Git..."
  brew install git
else
  echo "Git already installed."
fi

echo ""
echo "Verifying installations..."
echo "----------------------------------------"
echo "VS Code version:"
code --version || echo "Riley!: If you get an error right here, restart your computer, if it continues, ask D'Angelo about VSCode Pathing."
echo ""
echo "Python version:"
python3 --version
echo ""
echo "Git version:"
git --version
echo "----------------------------------------"

echo "done, you're set bro."
