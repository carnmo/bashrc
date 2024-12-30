#Java
export JAVA_HOME=~/dev/java/jdk
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:~/dev/java/maven/bin

#Rust
. "$HOME/.cargo/env"

#ssh-agent
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

[[ $- != *i* ]] && return

#Aliases
alias ai='echo -e `shuf /usr/share/dict/cracklib-small | head -n$(($RANDOM%4+1)) | tr "\n" " "`'
alias aur=' cd ~/dev/repos/aur'
alias diff='diff --color'
alias dt='date "+%Y-%m-%d %H:%M:%S"'
alias gh=' cd ~/dev/repos/github'
alias grep='grep --color=auto'
alias ls='ls -v --group-directories-first --color=auto'

#Prompt
export PS1='\w\$ '
