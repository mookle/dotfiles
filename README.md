# Dotfiles

Config files for various development tools.

## Usage

    $ ./install.sh

This script `rsync`s the dotfiles into the current user's `$(HOME)` directory, then uses `read` and `sed` to replace certain tokenised parameters.

## Token replacement

`install.sh` will prompt the user for any token replacement values that may be required. Currently, the following values are requested:

    // ~/.gitconfig
    [user]
      email = <EMAIL>
