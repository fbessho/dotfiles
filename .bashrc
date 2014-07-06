export PS1="\[\033[4;33m\]\w \u\$\[\033[0m\] "
export PATH=$HOME/.rbenv/bin:/usr/local/bin:$PATH
eval "$(rbenv init -)"

# JDK setting for Mac
if [ -f "/usr/libexec/java_home" ]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
fi
