#!/bin/zsh
#
# .aliases - Set whatever shell aliases you want.
#

# Single character aliases - be sparing!
alias _=sudo
alias d=docker
alias g=git
alias l=ls

# Mask built-ins with better defaults.
alias vi=vim
alias ls='lsd'

# Colorize grep.
alias grep='grep --color=auto -i'

# More ways to ls.
alias ll='ls -lh'
alias la='ls -lAh'
alias ldot='ls -ld .*'

# Fix common typos.
alias quit='exit'
alias cd..='cd ..'

# Navigation enhancement.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

# Awk shortcuts.
alias ap1="awk '{print \$1}'"
alias ap2="awk '{print \$2}'"
alias ap3="awk '{print \$3}'"
alias ap4="awk '{print \$4}'"
alias ap5="awk '{print \$5}'"
alias ap6="awk '{print \$6}'"
alias ap7="awk '{print \$7}'"
alias ap8="awk '{print \$8}'"
alias ap9="awk '{print \$9}'"
alias ap10="awk '{print \$10}'"

# Tar.
alias tarls="tar -tvf"
alias untar="tar -xf"

# Find.
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# Url encode/decode.
alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print (ul.quote_plus(sys.argv[1]))"'

# Misc.
alias please=sudo
alias zshrc='${EDITOR:-vim} "${ZDOTDIR:-$HOME}"/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd ${ZDOTDIR:-~}'
