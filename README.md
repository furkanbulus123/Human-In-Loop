# HILClaude: Token Saver for Claude Code

Claude Code is a highly capable tool, but its autonomous file reading and terminal execution loops (agentic loops) can lead to massive API bills. LeanClaude is a configuration wrapper that restricts Claude Code using a "Human-in-the-Loop" (HITL) architecture, aiming to reduce output token usage by up to 80%.

## The Problem: Why Does Claude Code Consume So Many Tokens?
When Claude Code encounters an error or develops a feature, it autonomously uses the terminal, reads files from scratch, and retries repeatedly. Output tokens are significantly more expensive than input tokens, and this autonomous loop can quickly spiral out of control, resulting in slow response times and high computational costs.

## The Solution: Orchestrator Mode
The LeanClaude architecture disables Claude Code's autonomous tool-use capabilities. Instead, Claude acts strictly as an orchestrator. It makes architectural decisions and provides the exact commands as plain text for the developer to execute. The human does the heavy lifting (terminal execution, file management), while the AI provides the intelligence.

## How to Use

1. Clone the repository:
   `git clone https://github.com/yourusername/LeanClaude.git`
2. Navigate into the directory:
   `cd LeanClaude`
3. Make the script executable:
   `chmod +x lean-claude.sh`
4. Run the wrapper script:
   `./lean-claude.sh`

Now, instead of autonomously rewriting hundreds of lines of code and wasting tokens, Claude Code will respond with targeted instructions:
"1. Run `npm install express` and report back the result.
 2. If successful, change line 14 in server.js to the following snippet..."

## Estimated Cost Comparison
| Task | Standard Claude Code | HILClaude (This Repo) |
|------|----------------------|------------------------|
| Debugging (1 Loop) | ~4000 Output Tokens | ~250 Output Tokens |
| Scaffolding a Project | ~8000 Output Tokens | ~500 Output Tokens |

## Contributing
Contributions are welcome. Feel free to open issues or submit pull requests to improve the strictness and efficiency of the HITL prompt.
