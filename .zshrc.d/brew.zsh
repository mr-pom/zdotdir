(( $+commands[brew] )) || return 1
eval $(brew shellenv)

export HOMEBREW_BAT=1
export HOMEBREW_NO_ENV_HINTS=1
