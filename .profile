# Shell colours
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Add MacPort directories to the PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Source bash completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# Python
export PYTHONSTARTUP=~/.pythonrc

