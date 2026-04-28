# AL Automator Scripts

These scripts power the AL control buttons on Tron.

---

## Start AL

```bash
pkill -9 -f bot.py
pkill -9 -f ollama
sleep 5

osascript <<'EOF'
tell application "Terminal"
    activate
    do script "ollama serve"
    delay 10
    do script "cd ~/Desktop/clawdbot && source .venv/bin/activate && python bot.py"
    delay 8
    do script "curl -s http://127.0.0.1:11434/api/generate -d '{\"model\":\"phi3\",\"prompt\":\"hi\",\"stream\":false,\"keep_alive\":\"30m\"}' > /dev/null"
end tell
EOF

## Stop All
pkill -9 -f bot.py
pkill -9 -f ollama

## Status AL
BOT=$(pgrep -f bot.py)
OLLAMA=$(pgrep -x ollama)

STATUS="AL STATUS:\n\n"

if [ -n "$BOT" ]; then
  STATUS+="Bot: Running\n"
else
  STATUS+="Bot: NOT running\n"
fi

if [ -n "$OLLAMA" ]; then
  STATUS+="Ollama: Running\n"
else
  STATUS+="Ollama: NOT running\n"
fi

osascript -e "display dialog \"$STATUS\" buttons {\"OK\"} default button \"OK\""
