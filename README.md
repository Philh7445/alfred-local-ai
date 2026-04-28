# Alfred Local AI (AL)

## Overview
Alfred (AL) is a locally hosted AI assistant built to run on a dedicated machine (“Tron”) using Ollama as the language model backend and a Telegram bot as the user interface.

This project documents the structure, operation, and ongoing development of a personal AI system designed for:
- Local AI processing (no cloud dependency)
- Fast response workflows
- System automation and expansion
- Practical AI experimentation in a controlled environment

---

## System Architecture

```
User (Telegram)
      ↓
   bot.py  (Messenger Layer)
      ↓
   Ollama (LLM Engine)
```

- **Telegram** → User interface
- **bot.py** → Handles messaging and logic
- **Ollama** → Runs the AI model locally

---

## Core Components

- **Ollama** — Local AI model runtime (“Brain”)
- **Telegram Bot** — Communication interface
- **Python (bot.py)** — Message handling + control layer
- **Tron (Host Machine)** — Dedicated system running AL

---

## Startup Process (Simplified)

1. Start Ollama
2. Start bot.py
3. Send initial message to warm up system

---

## Performance Expectations

- First response: ~10–25 seconds (model warm-up)
- Follow-up responses: ~1–3 seconds

---

## Purpose of This Repository

This repository serves as:
- Documentation of a working local AI system
- A reference for restarting, troubleshooting, and improving AL
- A portfolio project demonstrating system design and operational thinking

---

## Status

🟢 Active Development  
This system is currently being refined for speed, stability, and expanded capabilities.

---

## Future Goals

- Add FastAPI backend layer
- Implement automation workflows
- Improve response speed and reliability
- Expand integrations beyond Telegram
