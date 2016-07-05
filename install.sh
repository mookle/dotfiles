#!/bin/bash

readonly DESTINATION=${HOME}
readonly EXCLUDE_FILE=.rsync_exclude

prompt() {
    read -n1 -p "WARNING! This will overwrite existing files in $DESTINATION. Continue? [y/N]: "
    echo $REPLY
}

install() {
    rsync --exclude-from "$EXCLUDE_FILE" --exclude "$EXCLUDE_FILE" -av --no-perms . "$DESTINATION"
}

bash() {
    case `os` in
        lnx*) cat ./.bashrc >> $DESTINATION/.bashrc;; # @todo Make this idempotent
        osx*) cp ./.bash{rc,_profile} $DESTINATION;;
    esac
}

replace_tokens() {
    -read -p ".gitconfig wants to set user.email: " email
    sed -i.bak s/\<EMAIL\>/"$email"/g $DESTINATION/.gitconfig
    rm $DESTINATION/.gitconfig.bak
}

# ===========================

if [[ $(prompt) =~ [Yy] ]]; then
    install && bash && replace_tokens
    echo -e "\nAll done!\n"
else
    echo -e "\nAborting...\n"
fi
