#!/bin/bash

echo "Stopping Alfred (AL)..."

# Kill bot process
echo "Stopping bot..."
pkill -f "bot.py"

# Kill Ollama
echo "Stopping Ollama..."
pkill -f "ollama"

echo "AL stopped."
