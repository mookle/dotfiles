[[ -s ~/.bashrc ]] && source ~/.bashrc
[[ -s ~/.bash_aliases ]] && source ~/.bash_aliases

# Set a proper default
export EDITOR="vim"

# mookle/dotfile.git/install.sh *should* ensure Homebrew exists
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
