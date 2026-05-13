# HILClaude

A local configuration wrapper to reduce token usage by restricting Claude Code to a "Human-in-the-Loop" architecture.

## How to Use

### 1
##

This tool is designed to run locally within your specific project directory. 

1. Copy the `HIL_claude.sh` and `HIL_prompt.md` files into the folder where you want to work.
2. Open your terminal in that directory and make the script executable:
   `chmod +x HIL_claude.sh`
3. Instead of typing the standard `claude` command, start the tool by running:
   `./HIL_claude.sh`

### 2 
## 

1. Clone the repository:
   `git clone https://github.com/yourusername/HILClaude.git`
2. Navigate into the directory:
   `cd HILClaude`
3. Make the script executable:
   `chmod +x HIL_claude.sh`
4. Run the wrapper script:
   `./HIL_claude.sh`
   

Claude will now act strictly as an orchestrator, giving you exact commands to execute manually rather than running them autonomously.
