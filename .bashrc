# Better prompt
PS1="\u@\H:\w$ " # e.g. mookle@localhost:/srv/www$

# OSX Mavericks doesn't have a default
export EDITOR="vim"

# Handy alias definitions
alias ll="ls -lah"

# Android SDK
export ANDROID_HOME=$HOME/.android/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH
