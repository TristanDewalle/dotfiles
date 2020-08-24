#!/bin/bash
alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
alias hibern='systemctl suspend'
alias test_event='xev'
alias die='poweroff'
alias ff='firefox'
alias vim='nvim'
alias feh='feh -Fd'
alias lock='i3lock -i /home/tristan/Pictures/Wallpapers/converted/steampunk_eye.PNG'
alias pdf_merge='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile='
#final first, next file1, file2, etc
alias update_urxvt='xrdb ~/.Xresources'
alias bye='systemctl suspend' # && i3lock'
alias logout='i3-msg exit'
alias se='sudoedit'
alias ds='xrandr --output VGA-1 --right-of DP-1'
alias tree='tree -C'

alias cp="cp -v"
alias df="df -h"
alias du="du -h"
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias make="make -j$(nproc)"
#alias colors='for x in 0 1 4 5 7 8; do for i in `seq 30 37`; do for a in `seq 40 47`; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo "";'
alias grep='grep --color=auto'

activate(){
	venv_folder=venv
	if [ -e $venv_folder ]
	then
		source $venv_folder/bin/activate
	else
		echo "No python virtual environment named $venv_folder found."
		return 1
	fi
}
