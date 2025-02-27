# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

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

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

alias idrive='cd "$HOME/Library/Mobile Documents/com~apple~CloudDocs"'
