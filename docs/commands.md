# Alfred (AL) Command Reference

## Standard Restart

Use this when AL needs a clean restart.

```bash
cd ~/Desktop/alfred-local-ai/scripts
./stop.sh
sleep 5
./start.sh
```

---

## Start AL

```bash
cd ~/Desktop/alfred-local-ai/scripts
./start.sh
```

---

## Stop AL

```bash
cd ~/Desktop/alfred-local-ai/scripts
./stop.sh
```

---

## Emergency Kill

Use this if Telegram reports a bot conflict.

```bash
pkill -9 -f bot.py
pkill -9 -f ollama
```

Then wait 5–10 seconds and restart:

```bash
./start.sh
```

---

## Check for Bot Process

```bash
ps aux | grep bot.py
```

Healthy result: only one real `bot.py` process should be running.

---

## Make Scripts Executable

Only needed after first cloning the repo.

```bash
cd ~/Desktop/alfred-local-ai/scripts
chmod +x start.sh stop.sh
```

---

## Clone Repo to Tron

Only needed if the repo is not already on the machine.

```bash
cd ~/Desktop
git clone https://github.com/Philh7445/alfred-local-ai.git
```

---

## Healthy Running State

AL is healthy when:

- One Terminal is open running AL
- Telegram responds normally
- No Telegram conflict errors appear
- Ollama is listening on `127.0.0.1:11434`

---

## Notes

- First Telegram response may take about 20–25 seconds.
- Follow-up responses should usually be faster.
- Avoid running `bot.py` from multiple terminals.
- If confused, return to the Standard Restart process.
