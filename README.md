# HILClaude: Token Saver for Claude Code

Claude Code is a highly capable tool, but its autonomous file reading and terminal execution loops can lead to massive API bills. HILClaude reduces your output token usage by up to 80% by forcing Claude Code into a "Human-in-the-Loop" (HITL) architecture.

## How it Works
HILClaude utilizes Claude's native `CLAUDE.md` system prompt feature. It disables Claude's autonomous tool-use capabilities, turning it into an orchestrator. It makes architectural decisions and provides the exact commands as plain text. You do the heavy lifting (executing in the terminal), while the AI provides the intelligence.

## How to Use

1. Copy the `CLAUDE.md` file from this repository into the root directory of your own project.
2. Open your terminal in your project directory.
3. Simply start Claude Code normally:
   `claude`

## Quick Setup via Terminal (Recommended)
You can instantly apply this configuration to any of your projects without leaving the terminal. Run the following command in your project's root directory:

```bash
curl -o CLAUDE.md https://raw.githubusercontent.com/furkanbulus123/Human-In-Loop/main/CLAUDE.md


