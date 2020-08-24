#!/bin/bash
#
#
# Copyright (C) 2014 Arnaud Levaufre <arnaud@levaufre.name>
#
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
# of the Software, and to permit persons to whom the Software is furnished to do
# so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

export EDITOR=nvim

export HISTCONTROL=ignoreboth
export HISTSIZE=-1
export HISTFILESIZE=-1

if [ ! -z "$TMUX"  ]
then
    export TERM=tmux-256color
fi

# append to the history file, don't overwrite it
shopt -s histappend


# COLORS
black='\e[00;30m'
red='\e[00;31m'
green='\e[00;32m'
yellow='\e[00;33m'
blue='\e[00;34m'
magenta='\e[00;35m'
cyan='\e[00;36m'
grey='\e[00;37m'
dark_grey='\e[01;30m'
light_red='\e[01;31m'
light_green='\e[01;32m'
light_yellow='\e[01;33m'
light_blue='\e[01;34m'
light_magenta='\e[01;35m'
light_cyan='\e[01;36m'
white='\e[01;37m'


# source aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# source completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


# source specific aliases (set for job, or personnal for example)
if [ -f ~/.local_bash_aliases ]; then
    . ~/.local_bash_aliases
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tristan/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tristan/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tristan/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tristan/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

