# homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# nvim
export EDITOR=/opt/homebrew/bin/nvim

# rust
source "$HOME/.cargo/env"

# rust build optimization
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
export PATH="$HOME/.local/state/fnm_multishells/14603_1731887886613/bin":$PATH
export FNM_MULTISHELL_PATH="$HOME/.local/state/fnm_multishells/14603_1731887886613"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="$HOME/.local/share/fnm"
export FNM_LOGLEVEL="info"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_COREPACK_ENABLED="false"
export FNM_RESOLVE_ENGINES="false"
export FNM_ARCH="arm64"

FNM_PATH="$HOME/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/sj_ly00/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi


# rust
source "$HOME/.cargo/env"

# Php
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"

# JAVA
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

# Android 
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter
export PATH=$HOME/development/flutter/bin:$PATH
