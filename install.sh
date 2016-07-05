#!/bin/bash

# Useful when things go a bit wrong...
ABORT () {
    echo "Aborting: $1\n"
    exit;
}

# Figure out which OS the script is running in
os () {
    case $(uname) in
        Linux*) echo 'lnx';;
        Darwin*) echo 'osx';;
        *) ABORT 'Unsupported operating system'
           exit;;
    esac
}

# OS-safe sed
sedi () {
    case `os` in
        lnx*) sedi='-i';;
        osx*) sedi=('-i' '');;
    esac

    LC_ALL=C sed "${sedi[@]}" "$@"
}

# Check any OS-specific preconditions
if [ `os` == "osx" ]; then
    if ! type "brew" > /dev/null 2>&1; then
        ABORT 'Homebrew not installed'
    fi
fi

# Safety first...
echo 'WARNING! This script will overwrite existing configuration files'
while true; do
    read -p 'Do you wish to continue? [Y/n]: ' yn
    case ${yn:-Y} in
        [yYes]* ) break;;
        [nNo]* ) exit;;
        * ) echo 'Please answer y(es) or n(o)';;
    esac
done

# Copy config files across to ~
echo -e 'Copying configuration files'
rsync --exclude '.git/' \
      --exclude 'README.md' \
      --exclude 'install.sh' \
      --exclude '.DS_Store' \
      --exclude 'sbtopts' \
      --exclude '.bashrc' \
      --exclude '.bash_profile' \
      -aq --no-perms . ~

# Copy any stragglers that don't live in ~
rsync -aq ./sbtopts /usr/local/etc/sbtopts

# OS-specific bash configuration
case `os` in
    lnx*) cat ./.bashrc >> ~/.bashrc;; # @todo Make this idempotent
    osx*) brew install bash-completion &&
          cp ./.bash{rc,_profile} ~;;
esac

# Setup git user.email
read -p ".gitconfig wants to set user.email: " email
sedi s/\<EMAIL\>/"$email"/g ~/.gitconfig

echo -e "\nAll done!\n"
