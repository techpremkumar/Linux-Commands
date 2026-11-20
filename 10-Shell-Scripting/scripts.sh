#!/usr/bin/env bash
# Shell scripting examples for Linux practice.
# Run with: bash scripts.sh

set -euo pipefail

echo "Hello from Bash"

# Variables
username="${USER:-unknown}"
echo "Current user: $username"

# Read-only command example
current_directory="$(pwd)"
echo "Current directory: $current_directory"

# Conditional
if [[ -d "$HOME" ]]; then
  echo "Home directory exists: $HOME"
else
  echo "Home directory was not found."
fi

# Loop
for item in one two three; do
  echo "Item: $item"
done

# Function
show_date() {
  date
}

echo "Current date and time:"
show_date

# Safe argument handling example
if [[ $# -gt 0 ]]; then
  printf 'Argument: %s\\n' "$@"
else
  echo "No command-line arguments supplied."
fi
