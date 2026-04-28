# AL Automator Scripts

These scripts power the AL control buttons on Tron.

---

## Start AL (Clean Boot)

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
