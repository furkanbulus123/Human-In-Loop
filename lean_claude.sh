#!/bin/bash
# Lean Claude Code Launcher

PROMPT_FILE="lean_prompt.md"

if [ ! -f "$PROMPT_FILE" ]; then
    echo "Error: $PROMPT_FILE not found. Please ensure you are in the LeanClaude directory."
    exit 1
fi

echo "Starting Lean Claude. Autonomous actions disabled, token saver active."
# Launch Claude Code with the restrictive prompt
claude -p "$(cat $PROMPT_FILE)"
