# Alfred (AL) Restart Guide

## TL;DR
1. Start Ollama (Brain)
2. Start bot.py (Messenger)
3. Send a warm-up message

---

## System Overview

- **Brain** → Ollama  
- **Messenger** → bot.py  
- **Interface** → Telegram  

```
Telegram → bot.py → Ollama
```

---

## Startup Checklist

Before starting:

- [ ] Terminal 1 open
- [ ] Ollama running
- [ ] Terminal 2 open
- [ ] bot.py running
- [ ] Telegram ready

---

## Step-by-Step Startup

### 1. Start Ollama
```bash
ollama serve
```

---

### 2. Start the Bot

```bash
cd ~/Desktop/clawdbot
source .venv/bin/activate
python bot.py
```

---

### 3. Warm-Up the System

Send:
```
hi
```

This initializes the model and improves response speed.

---

## Expected Performance

- First response: 10–25 seconds  
- Follow-up responses: 1–3 seconds  

---

## Common Mistakes

- Running `bot.py` twice → causes conflict errors  
- Running commands from the wrong directory  
- Closing the Ollama terminal  
- Having too many terminal windows open  

---

## Quick Fix (Kill Bot Process)

If the bot is stuck or duplicated:

```bash
pkill -f "/Users/phil_ai/Desktop/clawdbot/bot.py"
```

Then restart the bot.

---

## Troubleshooting Flow

**Bot not responding?**

1. Is Ollama running?  
   - ❌ No → Run `ollama serve`  
   - ✅ Yes → Continue  

2. Is bot.py running?  
   - ❌ No → Start bot  
   - ✅ Yes → Continue  

3. Conflict error?  
   - ✅ Yes → Kill bot → Restart  
   - ❌ No → Continue  

4. Slow first response?  
   - Normal behavior (model warm-up)

---

## Notes

- Always start Ollama **before** bot.py  
- Keep terminal sessions organized  
- Avoid running duplicate bot instances  

---

## System Mental Model

- **Ollama = Brain**
- **bot.py = Body**
- **Telegram = Voice**

---

## Status

✅ Stable for daily use  
⚠️ First response delay is expected behavior
