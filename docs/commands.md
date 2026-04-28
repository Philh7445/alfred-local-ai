# Alfred (AL) Command Reference

## Standard Restart (MOST IMPORTANT)

Use this anytime something seems off.

cd ~/Desktop/alfred-local-ai/scripts
./stop.sh
sleep 5
./start.sh

---

## Start AL

cd ~/Desktop/alfred-local-ai/scripts
./start.sh

---

## Stop AL

cd ~/Desktop/alfred-local-ai/scripts
./stop.sh

---

## Emergency Fix (Telegram Conflict)

If you see errors about multiple bot instances:

pkill -9 -f bot.py
pkill -9 -f ollama

Then restart:

cd ~/Desktop/alfred-local-ai/scripts
./start.sh

---

## Check If Bot Is Running

ps aux | grep bot.py

You should see ONLY ONE real bot.py process.

---

## First-Time Setup (ONLY if needed)

cd ~/Desktop
git clone https://github.com/Philh7445/alfred-local-ai.git

cd ~/Desktop/alfred-local-ai/scripts
chmod +x start.sh stop.sh

---

## What "Healthy" Looks Like

- One terminal running AL
- Telegram responds
- No conflict errors
- Ollama running in background

---

## Performance Notes

- First message after startup: ~10 seconds
- Messages after that: fast (1–3 seconds)

---

## Golden Rule

If anything breaks → run Standard Restart
