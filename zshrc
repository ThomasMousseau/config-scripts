#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# Bind Shift + Delete to backward-kill-word
bindkey '^[[3;2~' backward-kill-word


# plugins=(zsh-autosuggestions)
# plugins=(z zsh-autosuggestions)

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export TERM="xterm-256color"
export NVIM_TUI_ENABLE_TRUE_COLOR=1

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# zstyle ':prezto:module:completion' auto-update 'yes'
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# zstyle ':completion:*' menu select
# zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

#bindkey '^[^?' backward-kill-word

export EDITOR=vim
export LSCOLORS='GxFxCxDxBxegedabagaced'
