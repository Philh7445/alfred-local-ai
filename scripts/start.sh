#!/bin/bash

echo "Starting Alfred (AL)..."

# Start Ollama if not already running
if pgrep -x "ollama" > /dev/null
then
    echo "Ollama is already running."
else
    echo "Starting Ollama..."
    ollama serve &
    sleep 5
fi

# Move to bot folder
cd ~/Desktop/clawdbot || {
    echo "Error: clawdbot folder not found."
    exit 1
}

# Activate virtual environment
source .venv/bin/activate

# Start bot
echo "Starting Telegram bot..."
python bot.py
