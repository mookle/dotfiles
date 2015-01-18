# Better prompt
PS1="\u@\H:\w$ " # e.g. mookle@localhost:/srv/www$

# OSX Mavericks doesn't have a default
export EDITOR="vim"

# Handy alias definitions
alias ll="ls -lah"
alias tmkill="tmux kill-session"

# Android SDK
export ANDROID_HOME=$HOME/.android/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
