# Alfred (AL) System Architecture

## Overview
Alfred (AL) is a locally hosted AI assistant designed to run on a dedicated machine ("Tron") using a modular architecture that separates communication, processing, and execution layers.

The system prioritizes:
- Local processing (no cloud dependency)
- Modular design
- Operational control and visibility
- Expandability for future automation

---

## High-Level Architecture

```
User (Telegram)
      ↓
   bot.py  (Messenger Layer)
      ↓
   Ollama (LLM Engine)
      ↓
 Local System (Tron)
```

---

## Core Layers

### 1. Interface Layer — Telegram
- Acts as the user-facing interface
- Allows remote interaction with AL
- Sends user prompts into the system

---

### 2. Communication Layer — bot.py
- Handles incoming messages from Telegram
- Processes and forwards prompts to Ollama
- Returns responses back to the user

**Responsibilities:**
- Message handling
- Input/output flow
- Session control

---

### 3. Processing Layer — Ollama
- Runs the local language model
- Processes prompts and generates responses

**Role:**
- Core “brain” of the system
- Handles all inference locally

---

### 4. Host System — Tron

- Dedicated iMac used to run AL
- Handles:
  - CPU / memory allocation
  - Process management
  - System stability

---

## Data Flow

1. User sends message via Telegram  
2. Message received by `bot.py`  
3. `bot.py` forwards request to Ollama  
4. Ollama processes prompt  
5. Response returned to `bot.py`  
6. `bot.py` sends response back to Telegram  

---

## Design Principles

### Local-First
- No dependency on external APIs
- Full control over data and processing

---

### Modular Structure
- Each component has a single responsibility:
  - Telegram = interface
  - bot.py = communication
  - Ollama = processing

---

### Observability
- System behavior can be monitored via:
  - Terminal output
  - Response timing
  - Process state

---

### Controlled Execution
- Manual startup process ensures:
  - No unintended automation
  - Full operator awareness

---

## Operational Model

### Startup Order (Critical)
1. Ollama must start first
2. bot.py must start second
3. System must be warmed up with initial message

---

### Runtime Behavior
- First query initializes model (slower)
- Subsequent queries are significantly faster
- System performance depends on:
  - Available system resources
  - Model size
  - System uptime

---

## Known Constraints

- Initial response latency due to model warm-up
- Performance tied to local hardware limits
- Requires manual process management

---

## Future Architecture Goals

- Introduce FastAPI backend layer
- Add automation endpoints
- Implement health monitoring
- Enable multi-interface support (web UI, terminal, etc.)

---

## System Mental Model

- **Telegram = Voice**
- **bot.py = Nervous System**
- **Ollama = Brain**
- **Tron = Body**

---

## Summary

Alfred (AL) is a modular, local-first AI system designed for control, flexibility, and real-world experimentation. Its architecture reflects a clear separation of concerns and provides a strong foundation for future expansion into automation and intelligent workflows.
