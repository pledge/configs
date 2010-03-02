
# MacPorts Installer addition on 2009-08-29_at_14:16:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#bash completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

#colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#python
export PYTHONSTARTUP=~/.pythonrc

