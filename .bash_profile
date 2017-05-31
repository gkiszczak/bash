export PATH=/usr/local/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
setJava7() {
	export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
}
setJava8() {
	export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
}
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
alias upgrade='brew update && brew upgrade && brew cask list | xargs brew cask install --force && brew cleanup --force && brew cask cleanup --force'
