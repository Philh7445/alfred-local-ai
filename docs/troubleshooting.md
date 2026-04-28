# Alfred (AL) Troubleshooting & Performance Guide

## Purpose
This document captures real-world issues encountered while running Alfred (AL) and how they were diagnosed and resolved.

This is not theoretical — it reflects actual system behavior during operation.

---

## 🔴 Issue: Slow Responses (Ollama Delay)

### Symptoms
- First message takes 20–60 seconds
- Even simple questions ("hi", "3+3") are slow
- System feels unresponsive

### Cause
- Model is not warmed up
- System resources may be strained
- Ollama may have been idle

### Resolution
- Send a warm-up message:
  ```
  hi
  ```
- Wait for first response
- Subsequent responses should improve to 1–3 seconds

### Notes
- This is expected behavior for local models
- Not a failure condition

---

## 🔴 Issue: Bot Not Responding

### Symptoms
- Telegram message sent
- No reply from AL

### Checklist
1. Is Ollama running?
   ```
   ollama serve
   ```

2. Is bot.py running?
   ```
   python bot.py
   ```

3. Was bot started from correct directory?
   ```
   ~/Desktop/clawdbot
   ```

---

## 🔴 Issue: Bot Running Twice (Conflict Error)

### Symptoms
- Error when starting bot
- Telegram behaves inconsistently
- Duplicate responses or no responses

### Cause
- Multiple instances of `bot.py` running

### Fix
```bash
pkill -f "/Users/phil_ai/Desktop/clawdbot/bot.py"
```

Then restart:
```bash
python bot.py
```

---

## 🔴 Issue: Terminal Confusion

### Symptoms
- Commands not working
- System "doesn't know" AL
- Wrong folder or environment

### Cause
- Running commands from wrong directory
- Virtual environment not activated

### Fix
```bash
cd ~/Desktop/clawdbot
source .venv/bin/activate
```

Then run:
```bash
python bot.py
```

---

## 🔴 Issue: System Slows Down Over Time

### Symptoms
- Responses get slower after days of uptime
- System feels sluggish

### Cause
- Long-running processes
- Memory usage buildup
- System updates or background processes

### Fix
- Reboot system (Tron)
- Restart AL components cleanly

---

## 🔴 Issue: Ollama Not Running

### Symptoms
- Bot starts but gives no responses
- Errors related to model

### Fix
```bash
ollama serve
```

---

## 🟡 Performance Optimization Tips

- Always send a warm-up message after startup
- Keep only necessary terminal windows open
- Avoid running duplicate processes
- Restart system periodically for stability

---

## 🧠 Key Insight

Most issues are not code failures — they are:
- Process management issues
- Environment issues
- System resource limitations

Understanding this is critical to operating a local AI system effectively.

---

## Status

🟢 System is stable when:
- Started in correct order
- Only one bot instance is running
- Ollama is active and warmed up
