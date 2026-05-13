#!/bin/bash
# HILClaude Launcher

PROMPT_FILE="HIL_prompt.md"

if [ ! -f "$PROMPT_FILE" ]; then
    echo "Error: $PROMPT_FILE not found. Please ensure you are in the HILClaude directory."
    exit 1
fi

echo "Starting HILClaude. Autonomous actions disabled, token saver active."
# Launch Claude Code with the restrictive prompt
claude -p "$(cat $PROMPT_FILE)"
