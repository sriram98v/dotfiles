#
# ~/.bashrc
#

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="\e[0;32m[\u@\h]\e[0m\e[0;32m \w \$\e[0m "
export PATH=$PATH:~/.local/bin/
