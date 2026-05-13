@echo off
IF NOT EXIST "HIL_prompt.md" (
    echo Error: HIL_prompt.md not found.
    exit /b 1
)

echo Starting HILClaude. Autonomous actions disabled, token saver active.

:: Dosya icerigini degiskene atayip claude parametresine gondermek
setlocal EnableDelayedExpansion
set "PROMPT_CONTENT="
for /f "delims=" %%i in (HIL_prompt.md) do (
    set "PROMPT_CONTENT=!PROMPT_CONTENT!%%i"
)

claude -p "!PROMPT_CONTENT!"
