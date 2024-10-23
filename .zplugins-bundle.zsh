#!/bin/zsh
#
# .zsh_plugins.txt - antidote plugins file
#

# Completions
mattmc3/ez-compinit
zsh-users/zsh-completions kind:fpath path:src
aloxaf/fzf-tab  # Remove if you don't use fzf

ohmyzsh/ohmyzsh path:plugins/docker kind:fpath
ohmyzsh/ohmyzsh path:plugins/docker-compose kind:fpath
ohmyzsh/ohmyzsh path:plugins/brew kind:fpath
ohmyzsh/ohmyzsh path:plugins/git kind:fpath
ohmyzsh/ohmyzsh path:plugins/sudo kind:fpath

zsh-users/zsh-completions path:src kind:fpath
lukechilds/zsh-better-npm-completion kind:fpath

# Completion styles
belak/zsh-utils path:completion/functions kind:autoload post:compstyle_zshzoo_setup

# Keybindings
belak/zsh-utils path:editor

# History
belak/zsh-utils path:history

# Plugins
rummik/zsh-tailf
mattmc3/zman
agkozak/zsh-z
wfxr/forgit
wfxr/emoji-cli
djui/alias-tips
leophys/zsh-plugin-fzf-finder
lukechilds/zsh-nvm

# Prompt
romkatv/powerlevel10k

# Utilities
zshzoo/macos conditional:is-macos
belak/zsh-utils path:utility
romkatv/zsh-bench kind:path

# Framework: Oh-My-Zsh#
ohmyzsh/ohmyzsh path:lib
ohmyzsh/ohmyzsh path:plugins/brew
ohmyzsh/ohmyzsh path:plugins/colored-man-pages
ohmyzsh/ohmyzsh path:plugins/colorize
ohmyzsh/ohmyzsh path:plugins/command-not-found
ohmyzsh/ohmyzsh path:plugins/common-aliases
ohmyzsh/ohmyzsh path:plugins/docker
ohmyzsh/ohmyzsh path:plugins/docker-compose
ohmyzsh/ohmyzsh path:plugins/git
ohmyzsh/ohmyzsh path:plugins/gpg-agent
ohmyzsh/ohmyzsh path:plugins/jsontools
ohmyzsh/ohmyzsh path:plugins/pip
ohmyzsh/ohmyzsh path:plugins/python
ohmyzsh/ohmyzsh path:plugins/ssh-agent
ohmyzsh/ohmyzsh path:plugins/sudo

# Other Fish-like features
zdharma-continuum/fast-syntax-highlighting  # Syntax highlighting
zsh-users/zsh-syntax-highlighting           # More syntax highlighting
zsh-users/zsh-autosuggestions               # Auto-suggestions
zsh-users/zsh-history-substring-search      # Up/Down to search history
