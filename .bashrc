#home bin
export PATH=$PATH:~/bin

#java
export JAVA_DIR=~/dev/java
export JAVA_HOME=$JAVA_DIR/jdk
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$JAVA_DIR/maven/bin

#ssh-agent
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

[[ $- != *i* ]] && return

#aliases
alias ai='echo -e `shuf /usr/share/dict/cracklib-small | head -n$(($RANDOM%4+1)) | tr "\n" " "`'
alias aur=' cd ~/dev/repos/aur'
alias dev='cd ~/dev/'
alias diff='diff --color'
alias dt='date "+%Y-%m-%d %H:%M:%S"'
alias gh=' cd ~/dev/repos/github'
alias grep='grep --color=auto'
alias ls='ls -v --group-directories-first --color=auto'
alias pu='sudo pacman -Syyu'

#prompt
export PS1='\w\$ '
