# Setup fzf
# ---------
# Detect fzf installation path based on OS and package manager
if [[ -n "$HOMEBREW_PREFIX" ]]; then
  # macOS with Homebrew
  FZF_BASE="$HOMEBREW_PREFIX/opt/fzf"
elif [[ -d "/home/linuxbrew/.linuxbrew/opt/fzf" ]]; then
  # Linux with Linuxbrew
  FZF_BASE="/home/linuxbrew/.linuxbrew/opt/fzf"
elif [[ -d "/opt/homebrew/opt/fzf" ]]; then
  # macOS with Homebrew (alternative path)
  FZF_BASE="/opt/homebrew/opt/fzf"
elif [[ -d "/usr/share/fzf" ]]; then
  # Linux package manager installation
  FZF_BASE="/usr/share/fzf"
else
  # fzf not found, return early
  return 1
fi

# Add fzf binary to PATH if not already there
if [[ ! "$PATH" == *"$FZF_BASE/bin"* ]] && [[ -d "$FZF_BASE/bin" ]]; then
  PATH="${PATH:+${PATH}:}$FZF_BASE/bin"
fi

# Auto-completion
# ---------------
if [[ -f "$FZF_BASE/shell/completion.zsh" ]]; then
  source "$FZF_BASE/shell/completion.zsh"
elif [[ -f "/usr/share/fzf/completion.zsh" ]]; then
  source "/usr/share/fzf/completion.zsh"
fi

# Key bindings
# ------------
if [[ -f "$FZF_BASE/shell/key-bindings.zsh" ]]; then
  source "$FZF_BASE/shell/key-bindings.zsh"
elif [[ -f "/usr/share/fzf/key-bindings.zsh" ]]; then
  source "/usr/share/fzf/key-bindings.zsh"
fi

# Dracula theme
# -------------
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
