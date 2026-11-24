# antigravity-agent-workflow

> A comprehensive handbook, workflow architecture, and reference repository for orchestrating the Google Antigravity AI agent with maximum efficiency, enterprise rules, and best practices.

**Developer:** [Kaaner4x](https://github.com/Kaaner4x)  
**License:** [MIT License](LICENSE)

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Quick Start (Installation)](#-quick-start-installation)
3. [Complete Slash Commands Matrix](#-complete-slash-commands-matrix)
4. [In-Depth Command Guide](#-in-depth-command-guide)
   - [Advanced Agent & Workflow Commands](#1-advanced-agent--workflow-commands)
   - [Session, Model & Context Management](#2-session-model--context-management)
   - [Customization, Plugins & MCP Tools](#3-customization-plugins--mcp-tools)
   - [Code Review, History & Help](#4-code-review-history--help)
5. [Subagents Architecture](#-subagents-architecture)
6. [Enterprise Rules & Project Structure](#-enterprise-rules--project-structure)
7. [Security & Terminal Sandbox Policy](#-security--terminal-sandbox-policy)
8. [Best Practices & Pro Tips](#-best-practices--pro-tips)
9. [Documentation Index](#-documentation-index)

---

## 🚀 Overview

**Antigravity** is a next-generation AI development platform built on Google DeepMind infrastructure. It enables autonomous code authoring, multi-step debugging, live browser automation, terminal sandbox execution, and collaborative multi-agent swarms across the Antigravity IDE, CLI (`agy`), and Desktop surfaces.

This repository serves as an enterprise-grade handbook and workflow starter kit, detailing **every slash command** (`/grill-me`, `/goal`, `/plan`, `/boost`, `/teamwork`, etc.), production rule sets (`.agents/rules/`), and real-world workflows.

---

## 🛠 Quick Start (Installation)

Clone the repository and run the setup script to scaffold all necessary directory structures and default rules:

### Windows (PowerShell):
```powershell
.\init.ps1
```

### Linux / macOS (Bash):
```bash
chmod +x init.sh && ./init.sh
```

---

## 📊 Complete Slash Commands Matrix

| Command | Category | Core Purpose |
|---|---|---|
| **`/grill-me`** | Planning / Architecture | Interviews the developer to resolve design decisions and edge cases before coding. |
| **`/plan`** | Planning / Strategy | Breaks down complex requirements into sequential, verifiable checklists. |
| **`/goal`** | Autonomous Execution | Runs continuously in a closed loop until the final objective is fully achieved. |
| **`/boost`** | Deep Reasoning | Applies multi-perspective analysis, counter-arguments, and rigorous verification. |
| **`/teamwork`** | Multi-Agent | Coordinates autonomous specialized subagents collaborating in parallel. |
| **`/swarm`** | Multi-Agent | Manages an agent swarm communicating through a shared message board. |
| **`/browser`** | Web Automation | Drives Chrome via DevTools to navigate, fill forms, and verify live UIs. |
| **`/schedule`** | Automation | Schedules recurring cron jobs or one-time delayed background tasks. |
| **`/automation`** | Automation | Interactive guide to design and configure scheduled agent workflows. |
| **`/learn`** | Memory & Rules | Persists user corrections or project conventions into permanent memory. |
| **`/compact`** | Context Optimization | Summarizes and frees conversation context window without losing state. |
| **`/clear` / `/reset`** | Session Control | Resets conversation context to start a fresh, clean session. |
| **`/model`** | Model Control | Displays or switches the active Gemini model (Flash, Pro, etc.). |
| **`/status`** | Diagnostics | Displays current agent state, background tasks, and context size. |
| **`/tokens` / `/cost`** | Metrics | Reports session token consumption and approximate cost metrics. |
| **`/plugin`** | Plugin Management | Manages, creates, and installs plugins, skills, and MCP bundles. |
| **`/mcp`** | Integrations | Inspects Model Context Protocol servers, resources, and tool connections. |
| **`/rules`** | Rule Management | Displays active project and global rules loaded from `.agents/rules/`. |
| **`/skills`** | Skill Management | Lists specialized procedural workflows loaded from `SKILL.md` definitions. |
| **`/review`** | Code Inspection | Generates and reviews code diffs before applying or committing changes. |
| **`/undo`** | Rollback | Safely reverts the most recent file edits made by the agent. |
| **`/help`** | Help | Lists all supported slash commands, flags, and options. |

---

## 🔍 In-Depth Command Guide

### 1. Advanced Agent & Workflow Commands

#### 🎯 `/grill-me` (Interactive Requirements Interview)
- **Purpose:** Prevents hasty code generation by acting as a principal architect or product manager, asking targeted questions to resolve architectural uncertainties and edge cases.
- **When to Use:** Before implementing new microservices, database schemas, or authentication flows.
- **Example:**
  > `/grill-me We are designing a distributed real-time notification engine using WebSockets and Redis. Interview me on architecture and edge cases.`

#### 📋 `/plan` (Strategic Step-by-Step Blueprint)
- **Purpose:** Deconstructs a complex mission into logical, sequential, and testable milestones.
- **When to Use:** Multi-file refactoring, dependency upgrades, or cross-cutting features.
- **Example:**
  > `/plan Create a phased migration plan to transition our REST API to GraphQL with backwards compatibility.`

#### 🏁 `/goal` (Unstoppable Objective Execution)
- **Purpose:** Operates autonomously in a continuous execution loop without pausing for per-step approval until the mission is 100% complete.
- **When to Use:** Overnight test suite repairs, massive legacy codebase migrations, or lint fixes.
- **Example:**
  > `/goal Convert all JavaScript files under src/ to TypeScript, resolve all type errors, and iterate until 'npm test' passes with 0 errors.`

#### 🧠 `/boost` (Deep Thinking & Multi-Perspective Verification)
- **Purpose:** Engages advanced reasoning modes to dissect complex algorithmic, concurrency, and security bottlenecks.
- **When to Use:** Deadlock resolution, memory leak investigations, cryptography implementations.
- **Example:**
  > `/boost Analyze race conditions in our distributed transaction locking mechanism and devise a proven fix.`

#### 👥 `/teamwork` & `/swarm` (Multi-Agent Swarm Orchestration)
- **Purpose:** Fans out tasks across specialized subagents (Frontend, Backend, QA) working concurrently on a shared message board.
- **When to Use:** Delivering end-to-end features where backend, frontend, and tests can be developed simultaneously.
- **Example:**
  > `/teamwork Concurrently develop the user avatar upload feature: Backend API, React crop UI, and integration test suite.`

#### 🌐 `/browser` (Live Chrome Automation)
- **Purpose:** Launches a headless or visible Chrome instance via DevTools to test real user interactions, verify forms, and inspect visual UI states.
- **When to Use:** End-to-end (E2E) testing, client-side visual validation, reproducing user-reported web bugs.
- **Example:**
  > `/browser Navigate to http://localhost:3000/login, fill the form with test credentials, and verify dashboard redirection.`

#### ⏰ `/schedule` & `/automation` (Scheduled Background Tasks)
- **Purpose:** Registers periodic cron jobs or one-time timers for scheduled agent execution.
- **When to Use:** Daily pull request summaries, weekly security audit runs, periodic cache warm-ups.
- **Example:**
  > `/schedule 0 9 * * 1-5 Inspect open pull requests and generate a status summary every weekday at 09:00.`

#### 🎓 `/learn` (Permanent Rule Learning)
- **Purpose:** Persists a resolved error or custom coding preference into persistent rule memory for future sessions.
- **Example:**
  > `/learn In this repository, always write commit messages following the Conventional Commits specification.`

---

### 2. Session, Model & Context Management

- **`/compact`:** Condenses conversational history into key state summaries, clearing context window overhead while preserving critical facts.
- **`/clear` / `/reset`:** Wipes the active conversational context to initiate a pristine session.
- **`/model`:** Inspects or hot-swaps the underlying model (e.g., Gemini Flash vs. Gemini Pro).
- **`/status`:** Displays agent operational status, active background threads, and token load.
- **`/tokens` / `/cost`:** Calculates prompt/completion token consumption and approximate session expenditure.
- **`/exit` / `/quit`:** Safely exits the Antigravity CLI session.

---

### 3. Customization, Plugins & MCP Tools

- **`/plugin`:** Explores the Agent Marketplace, manages installed plugins, and scaffolds new customization packs.
- **`/mcp`:** Inspects active Model Context Protocol servers (PostgreSQL, GitHub, Slack, Jira, Figma).
- **`/rules`:** Lists all project-scoped rules loaded from `.agents/rules/`.
- **`/skills`:** Lists active procedural skill definitions (`SKILL.md`).

---

### 4. Code Review, History & Help

- **`/review`:** Evaluates workspace file modifications in git diff format before execution.
- **`/undo`:** Safely reverts the last atomic batch of file modifications.
- **`/help`:** Displays the built-in manual and syntax reference for all available slash commands.

---

## 🤖 Subagents Architecture

| Subagent | Privilege Level | Primary Function |
|---|---|---|
| **`self`** | Full Permissions | Inherits parent capabilities to execute isolated sub-tasks without context pollution. |
| **`research`** | Read-Only | Safe read-only agent for indexing large codebases, web queries, and documentation lookup. |
| **`browser`** | Web & DOM | Drives Chrome DevTools for interaction, clicks, form entry, and visual UI audits. |
| **`image-generator`** | Creative | Generates architecture diagrams, visual assets, and mockups from text briefs. |

---

## ⚙️ Enterprise Rules & Project Structure

The repository is structured following enterprise best practices:

```
antigravity-agent-workflow/
├── .agents/
│   ├── rules/                 # Mandatory behavior and coding rules (.md)
│   │   ├── frontend.md        # Component architecture & UI accessibility
│   │   ├── backend.md         # Layered architecture, validation & API security
│   │   ├── security.md        # Auth, secret management & sandbox compliance
│   │   ├── code-review.md     # Commit conventions & review standards
│   │   ├── test-automation.md # Code coverage & test-driven quality assurance
│   │   └── general-rules.md   # Default language and operational guidelines
│   ├── skills/                # Procedural skill packages (SKILL.md)
│   └── scratch/               # Ephemeral calculation scripts and scratchpads
├── docs/                      # Comprehensive documentation
│   ├── workflows/             # Real-world end-to-end enterprise scenarios
│   │   ├── 01-pr-and-code-review.md
│   │   ├── 02-debugging-and-analysis.md
│   │   ├── 03-autonomous-goal-mode.md
│   │   ├── 04-browser-e2e-testing.md
│   │   └── 05-multi-agent-swarm.md
│   ├── slash-commands.md      # Exhaustive slash commands reference
│   ├── subagents-and-swarm.md # Subagents and multi-agent coordination
│   └── rules-and-skills.md    # Guide to creating rules, skills, and MCP tools
├── init.ps1                   # Windows environment setup script
├── init.sh                    # Linux / macOS environment setup script
├── LICENSE                    # MIT License (Kaaner4x)
└── README.md                  # Main documentation entry point
```

---

## 🛡 Security & Terminal Sandbox Policy

Antigravity executes terminal commands in **Standard Sandbox Mode** by default:
1. **Isolated Filesystem:** Restricted to the authorized workspace root.
2. **Network Perimeter:** External outbound requests outside the sandbox require explicit user approval.
3. **Destructive Guardrails:** Operations attempting to alter system partitions or disable security checks are automatically prevented.

---

## 💡 Best Practices & Pro Tips

1. **Leverage `@` Mentions:** Attach targeted files directly (`@src/auth.ts investigate this token expiry`).
2. **Plan Before Executing:** For multi-file changes, always initiate with `/plan` or `/grill-me`.
3. **Use `/goal` for Long Batches:** When running overnight test fixes, set a measurable completion metric.
4. **Prevent Context Bloat:** Use `/compact` every 20-30 turns to keep the agent sharp and responsive.

---

## 📚 Documentation Index

- [Complete Slash Commands Guide](docs/slash-commands.md)
- [Subagents & Swarm Architecture](docs/subagents-and-swarm.md)
- [Customizations: Rules, Skills & MCP](docs/rules-and-skills.md)
- [Enterprise Workflows](docs/workflows/)
  - [PR & Code Review Workflow](docs/workflows/01-pr-and-code-review.md)
  - [Root Cause Debugging Workflow](docs/workflows/02-debugging-and-analysis.md)
  - [Autonomous Goal Mode Workflow](docs/workflows/03-autonomous-goal-mode.md)
  - [Browser E2E Testing Workflow](docs/workflows/04-browser-e2e-testing.md)
  - [Multi-Agent Swarm Workflow](docs/workflows/05-multi-agent-swarm.md)

---

## 📄 License

This project is licensed under the **[MIT License](LICENSE)**.  
Developer: **Kaaner4x** (2026)
