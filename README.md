# Dotfiles

My day-to-day config files for various geeky escapades, nothing particularly special.

## Installation
There is a handy little install script which `rsync`s the files to `~/`, then uses `sed` to replace several tokenised parameters. Simply run:

    $ ./install.sh



### Parameters

The installation script will prompt for replacement token values referenced in the following files:
#### .gitconfig

    [user]
      email = <EMAIL>

#### .vimrc

ViM's XPTemplate plugin uses templates that contain the phpDocumentor `@author` tag.

    let g:xptemplate_vars = '$author=<AUTHOR>'



## Credits

The idea for this repo has been shamelessly ripped from [adlawson/dotfiles](https://github.com/adlawson/dotfiles)
