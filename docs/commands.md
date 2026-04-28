# Alfred (AL) Command Reference

## Current Control Method

AL is now controlled with macOS Automator buttons on Tron.

Primary buttons:

- Start AL
- Restart AL
- Stop AL
- Status AL

Do not manually run AL unless troubleshooting.

---

## Start AL

Use when:

- Tron has rebooted
- AL is completely off
- No AL Terminal windows are open

What it does:

- Starts Ollama
- Starts bot.py
- Warms the model

Steps:

1. Click Start AL
2. Wait 15–20 seconds
3. Test in Telegram:

2+2

Expected response:

20–30 seconds on first message.

---

## Restart AL

Use when:

- AL times out
- AL feels slow
- Telegram stops responding
- You need a fast reset

What it does:

- Restarts bot.py
- Keeps Ollama warm
- Re-warms the model

Steps:

1. Click Restart AL
2. Wait 10–15 seconds
3. Test in Telegram:

2+2

Expected response:

10–20 seconds.

---

## Stop AL

Use when:

- Done for the day
- Troubleshooting
- You want AL fully stopped

What it does:

- Stops bot.py
- Stops Ollama

Steps:

1. Click Stop AL
2. Confirm Telegram no longer responds

---

## Status AL

Use when:

- You are unsure what is running
- You want to check AL health

Shows:

- Bot running / not running
- Ollama running / not running

---

## Rules

Never:

- Click buttons repeatedly
- Mix manual commands and buttons
- Leave old Terminal windows open after Stop AL

Always:

- Wait after Start or Restart
- Keep only two AL Terminal windows open when running:
  - Ollama
  - bot.py

---

## Troubleshooting

If AL times out:

1. Click Restart AL
2. Wait 10–15 seconds
3. Test with:

2+2

If still broken:

1. Click Stop AL
2. Wait 5 seconds
3. Click Start AL
4. Wait 20 seconds
5. Test with:

2+2

---

## Manual Fallback

Only use this if the buttons fail.

Terminal 1:

pkill -9 -f bot.py
pkill -9 -f ollama
ollama serve

Terminal 2:

cd ~/Desktop/clawdbot
source .venv/bin/activate
python bot.py

---

## Healthy State

AL is healthy when:

- Telegram responds
- No timeout errors appear
- Ollama is running
- bot.py is running
- Only two AL Terminal windows are active

---

## Performance Expectations

First message after Start AL:

20–30 seconds

Warm responses:

10–25 seconds

Restart recovery:

10–20 seconds

---

## Golden Rule

If AL acts strange, click Restart AL first.
