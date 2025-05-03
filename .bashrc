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
export PS1="\[\033[1;35m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
