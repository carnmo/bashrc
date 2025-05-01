#history
HISTCONTROL=ignoreboth
HISTFILESIZE=2000
HISTSIZE=1000
shopt -s histappend
shopt -s checkwinsize

#autocompletion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#gcc colors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#home bin
export PATH=$PATH:~/bin

#java
export JAVA_DIR=~/dev/java
export JAVA_HOME=$JAVA_DIR/jdk
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$JAVA_DIR/maven/bin

[[ $- != *i* ]] && return

#aliases
alias ai='echo -e `shuf /usr/share/dict/cracklib-small | head -n$(($RANDOM%4+1)) | tr "\n" " "`'
alias dev='cd ~/dev/'
alias diff='diff --color'
alias dt='date "+%Y-%m-%d %H:%M:%S"'
alias gh=' cd ~/dev/repos/github'
alias grep='grep --color=auto'
alias ls='ls -v --group-directories-first --color=auto'

#prompt
function parse_git_dirty {
	[[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}
export PS1="\[\033[32m\]\w\[\033[31m\]\$(parse_git_branch)\[\033[00m\] $ "
