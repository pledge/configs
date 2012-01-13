# Interative shell source order: 
#    /etc/profile 
#    /etc/bashrc
#    ~/.profile (or ~/.bash_profile instead if exists)

# Shell colours
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Setup some colours to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors

# Add MacPort directories to the PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=~/dev/bin:$PATH

# Source bash completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# Aliases
alias ll='ls -lha'
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool FALSE ; killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool TRUE ; killall Finder"

# Shopt
shopt -s cdspell #allow incorrect directory names to be corrected
shopt -s checkwinsize #make sure terminals wrap lines correctly after resizing them
shopt -s cmdhist #multiline commands kept as one history item

bind "set completion-ignore-case on" 
bind "set show-all-if-ambiguous on" 

#set -o vi #vi edit mode
# ^l clear screen
#bind -m vi-insert "\C-l":clear-screen

# History
export HISTCONTROL=ignoredups
export HISTFILESIZE=3000
export HISTIGNORE="ls:ll" # : separate commands to ignore
shopt -s histappend

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
# make tab cycle through commands instead of listing
#bind '"\t":menu-complete'

# Grep
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# Python
export PYTHONSTARTUP=~/.pythonrc

# Prompts
prompt_func() {
    previous_return_value=$?;
    prompt="\[${COLOR_GREEN}\]\w\[${COLOR_GRAY}\]$(__git_ps1)\[${COLOR_NC}\] "
 
    if test $previous_return_value -eq 0
    then
        PS1="${prompt}> "
    else
        PS1="${prompt}\[${COLOR_RED}\]> \[${COLOR_NC}\]"
    fi
}
PROMPT_COMMAND=prompt_func

export GIT_PS1_SHOWDIRTYSTATE=1     #show * when unstaged changes, + when staged changes
export GIT_PS1_SHOWSTASHSTATE=1     #show $ if anything stashed
export GIT_PS1_SHOWUNTRACKEDFILES=1 #show % if any untracked files

# Editors 
export EDITOR='vim'
export GIT_EDITOR='vim'
alias mvim='mvim --remote-tab-silent'

# Java
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home 
export PATH=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home/bin:$PATH

# Python
export PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/:$PATH

# mkdir, cd into it
mkcd () {
	mkdir -p "$*"
	cd "$*"
}

# source highlight
alias ccat=src-hilite-lesspipe.sh 
export LESSOPEN="| src-hilite-lesspipe.sh %s"
export LESS=' -R '

#git toggle
source ~/Dropbox/development/dotfiles/git-config-toggle.sh
