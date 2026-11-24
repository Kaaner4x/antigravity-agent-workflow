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
   - [Core Agent & Workflow Commands](#1-core-agent--workflow-commands)
   - [Specialized Skills & Development Commands](#2-specialized-skills--development-commands)
   - [Migration, Extensibility & Customization](#3-migration-extensibility--customization)
   - [Session, Context & Diagnostics](#4-session-context--diagnostics)
5. [Subagents Architecture](#-subagents-architecture)
6. [Enterprise Rules & Project Structure](#-enterprise-rules--project-structure)
7. [Security & Terminal Sandbox Policy](#-security--terminal-sandbox-policy)
8. [Best Practices & Pro Tips](#-best-practices--pro-tips)
9. [Documentation Index](#-documentation-index)

---

## 🚀 Overview

**Antigravity** is a next-generation AI development platform built on Google DeepMind infrastructure. It enables autonomous code authoring, multi-step debugging, live browser automation, terminal sandbox execution, and collaborative multi-agent swarms across the Antigravity IDE, CLI (`agy`), and Desktop surfaces.

This repository serves as an enterprise-grade handbook and workflow starter kit, detailing **every slash command from the Antigravity command palette**, production rule sets (`.agents/rules/`), and real-world workflows.

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

The following matrix covers the full catalog of slash commands available in the Antigravity command palette:

| Command | Palette Description | Category | Primary Purpose |
|---|---|---|---|
| **`/btw`** | *Ask a quick question without interrupting the main conversation.* | Conversational | Side inquiry without derailing the main task or polluting memory. |
| **`/goal`** | *Run until the specified goal is completely finished.* | Autonomous Loop | Autonomous continuous execution loop without stopping for manual approval. |
| **`/compact`** | *Compact the conversation now (summarize history to free up the context window).* | Context Control | Frees up context window while preserving essential milestones and state. |
| **`/schedule`** | *Run an instruction on a recurring schedule or as a one-time timer.* | Scheduling / Cron | Registers cron expressions or one-shot delay timers for background agents. |
| **`/browser`** | *Invoke a browser agent for web tasks.* | Browser DevTools | Interacts with live web applications, inspects DOM, clicks, and tests forms. |
| **`/plan`** | *Plan carefully before executing a task.* | Strategy & Plan | Structures complex requirements into sequential, verifiable checklists. |
| **`/grill-me`** | *Interview me to align on a plan.* | Architecture Interview | Conducts an in-depth interview to expose edge cases and architectural uncertainties. |
| **`/teamwork`** | *Invoke a team of agents to autonomously tackle large projects.* | Multi-Agent Team | Spawns a coordinated team of autonomous agents for large-scale development. |
| **`/learn`** | *Reflect on recent successes or corrections to capture reusable skills or rules.* | Rule Learning | Persists user preferences and learned heuristics into permanent agent rules. |
| **`/boost`** | *Invoke the Boost multi-agent orchestrator for complex tasks.* | Deep Reasoning | Engages multi-agent perspective synthesis and mathematical verification. |
| **`/swarm`** | *(Preview & Quota Heavy) Run a swarm: several agents working in parallel on one task.* | Swarm Coordination | Runs parallel agents collaborating across a shared real-time message board. |
| **`/automation`** | *Interactive guide to design and create a scheduled background automation.* | Automation Wizard | Guided wizard for designing recurring background automation agents. |
| **`/generative_ui`** | *How to render rich interactive HTML widgets inline in the chat or as standalone artifacts.* | Rich UI Rendering | Produces interactive HTML/JS widgets, diagrams, and live visual dashboards. |
| **`/mcp-app-development`** | *Build, package, and debug MCP Apps for Antigravity.* | MCP Development | Guides developing MCP tools whose results render as interactive UI panes. |
| **`/migrate-agent-settings`** | *Migrates the user's MCP servers, skills, slash commands, subagents, and instruction files.* | Migration | Imports configuration from Claude Code, Cursor, Codex, and Gemini CLI into Antigravity. |
| **`/migrate-workflows`** | *Automatically migrate legacy workflows to modern skills across global and workspace configurations.* | Workflow Migration | Upgrades deprecated workflow formats into modern `SKILL.md` packages. |
| **`/plugin`** | *How to manage and create plugins — namespaced bundles of skills, agents, rules, MCP servers and hooks.* | Plugin Ecosystem | Discovers, installs, creates, and manages modular Antigravity plugins. |
| **`/run-workflow`** | *How to write and run a dynamic workflow script with the run_workflow tool.* | Scripted Workflows | Orchestrates dozens of agents via dynamic Python scripts (`agent`, `parallel`, `phase`). |
| **`/agy-customizations`** | *Comprehensive guide and reference for the Antigravity Customization System.* | System Reference | Explains discovery roots, loading priorities, and hook integration mechanics. |
| **`/antigravity-guide`** | *Provides a comprehensive guide, quick reference, and sitemap for Google Antigravity (AGY).* | Master Sitemap | Pointers to authoritative docs, CLI flags, IDE keybindings, and Python SDK. |

---

## 🔍 In-Depth Command Guide

### 1. Core Agent & Workflow Commands

#### 💬 `/btw` (By The Way - Quick Side Question)
- **Palette Description:** *Ask a quick question without interrupting the main conversation.*
- **When to Use:** When the agent is mid-plan or executing a deep refactor, and you need to clarify a quick syntax, library, or concept question without polluting the execution context.
- **Example:**
  > `/btw Does Node 20 natively support top-level await in CommonJS or only ESM?`

#### 🏁 `/goal` (Continuous Objective Execution)
- **Palette Description:** *Run until the specified goal is completely finished.*
- **When to Use:** Overnight test suite repairs, massive migrations, and end-to-end lint fixes. The agent iterates autonomously until the completion criteria are met.
- **Example:**
  > `/goal Convert all files in src/ to TypeScript and iterate until 'npm test' passes with 0 errors.`

#### 🗜 `/compact` (Context Window Optimizer)
- **Palette Description:** *Compact the conversation now (summarize history to free up the context window).*
- **When to Use:** After 20-30 turns when response latency increases or context bounds approach limits.
- **Example:**
  > `/compact`

#### ⏰ `/schedule` (Scheduled & Cron Automation)
- **Palette Description:** *Run an instruction on a recurring schedule or as a one-time timer.*
- **When to Use:** Daily PR triage, weekly dependency vulnerability audits, or recurring health probes.
- **Example:**
  > `/schedule 0 9 * * 1-5 Triage all open GitHub pull requests and post an executive summary.`

#### 🌐 `/browser` (Live Chrome Automation)
- **Palette Description:** *Invoke a browser agent for web tasks.*
- **When to Use:** Live web app interaction, end-to-end user journey tests, form entry, and visual validation.
- **Example:**
  > `/browser Open http://localhost:3000/login, fill test credentials, submit, and verify profile redirect.`

#### 📋 `/plan` (Strategic Task Blueprint)
- **Palette Description:** *Plan carefully before executing a task.*
- **When to Use:** Multi-component architectural refactoring or complex feature additions.
- **Example:**
  > `/plan Design a step-by-step phased migration from REST API to GraphQL.`

#### 🎯 `/grill-me` (Interactive Requirements Interview)
- **Palette Description:** *Interview me to align on a plan.*
- **When to Use:** Unclear requirements, design trade-offs, or high-risk architectural shifts. The agent interviews you sequentially before writing any code.
- **Example:**
  > `/grill-me We are building a multi-tenant subscription billing engine. Grill me on architecture, edge cases, and concurrency.`

#### 👥 `/teamwork` & `/swarm` (Multi-Agent Swarm)
- **Palette Description:** *Invoke a team of agents to autonomously tackle large projects.*
- **When to Use:** Large-scale features where backend API, frontend UI, and integration test suites can be parallelized across specialized subagents.
- **Example:**
  > `/teamwork Build the user avatar upload system concurrently: Backend API, React crop component, and Cypress test suite.`

#### 🎓 `/learn` (Permanent Rule Learning)
- **Palette Description:** *Reflect on recent successes or corrections to capture reusable skills or rules.*
- **When to Use:** After correcting agent behavior or standardizing a team convention.
- **Example:**
  > `/learn In this repository, always write commit messages in Conventional Commits format with emojis.`

#### 🧠 `/boost` (Deep Thinking & Verification)
- **Palette Description:** *Invoke the Boost multi-agent orchestrator for complex tasks.*
- **When to Use:** Distributed deadlocks, race conditions, algorithmic optimization, and cryptography audits.
- **Example:**
  > `/boost Investigate the deadlock in our database connection pool under high concurrency and propose a provable fix.`

---

### 2. Specialized Skills & Development Commands

- **`/automation`:** Launches the interactive conversational guide to design and schedule background automations.
- **`/generative_ui`:** Enables inline rendering of rich interactive HTML/CSS/JS widgets and dynamic visual controls.
- **`/mcp-app-development`:** Full toolkit to build, test, and debug Model Context Protocol apps rendered in the auxiliary pane.
- **`/run-workflow`:** Executes dynamic Python orchestration scripts that programmatically coordinate dozens of agents (`agent`, `parallel`, `pipeline`).

---

### 3. Migration, Extensibility & Customization

- **`/migrate-agent-settings`:** One-click migrator to transfer MCP servers, skills, and prompts from Claude Code, Cursor, Codex, or Gemini CLI into Antigravity.
- **`/migrate-workflows`:** Automatically converts legacy workflow formats into modern `SKILL.md` definitions.
- **`/plugin`:** Manages installed plugins and scaffolds new customization packs.
- **`/agy-customizations` & `/antigravity-guide`:** Official offline knowledge base for discovery roots, loading priority, and CLI references.

---

### 4. Session, Context & Diagnostics

- **`/model`:** View or change the active Gemini model.
- **`/status`:** Check background processes, agent states, and token usage.
- **`/review`:** Inspect proposed code diffs before applying changes.
- **`/undo`:** Revert the most recent file edits.
- **`/help`:** Display the official Antigravity command manual.

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
│   ├── slash-commands.md      # Exhaustive slash commands reference (Turkish guide)
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
2. **Use `/btw` for Side Queries:** Don't derail your primary conversation; ask quick side questions with `/btw`.
3. **Plan Before Executing:** For multi-file changes, always initiate with `/plan` or `/grill-me`.
4. **Use `/goal` for Long Batches:** When running overnight test fixes, set a measurable completion metric.
5. **Prevent Context Bloat:** Use `/compact` every 20-30 turns to keep the agent sharp and responsive.

---

## 📚 Documentation Index

- [Complete Slash Commands Guide (Türkçe Detaylı Kılavuz)](docs/slash-commands.md)
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
