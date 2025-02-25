# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Editors
export EDITOR='vim'
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR

# Less
export LESSOPEN="| src-hilite-lesspipe.sh %s"
export LESS=' -R '

# PATH
export PATH="$HOME/.cargo/bin:$HOME/go/bin:$PATH"
export PATH="/usr/local/opt/libarchive/bin:$PATH"

# bun completions
[ -s "/Users/mgilday/.bun/_bun" ] && source "/Users/mgilday/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
