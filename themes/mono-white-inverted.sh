#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#FAFAFA"           # Black
export COLOR_02="#262626"           # Red
export COLOR_03="#262626"           # Green
export COLOR_04="#262626"           # Yellow
export COLOR_05="#262626"           # Blue
export COLOR_06="#262626"           # Magenta
export COLOR_07="#262626"           # Cyan
export COLOR_08="#262626"           # Light gray

export COLOR_09="#262626"           # Dark gray
export COLOR_10="#262626"           # Light Red
export COLOR_11="#262626"           # Light Green
export COLOR_12="#262626"           # Light Yellow
export COLOR_13="#262626"           # Light Blue
export COLOR_14="#262626"           # Light Magenta
export COLOR_15="#262626"           # Light Cyan
export COLOR_16="#262626"           # White

export BACKGROUND_COLOR="#FAFAFA"   # Background Color
export FOREGROUND_COLOR="#262626"   # Foreground Color (text)
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor color
export PROFILE_NAME="mono-white-inverted"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
