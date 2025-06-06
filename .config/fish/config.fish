# Sync history across sessions
function save_history --on-event fish_preexec
  history --save
end
alias hr 'history --merge' # read and merge history from disk
bind \e\[A 'history --merge ; up-or-search'

# TODO parameterise this block
# Default edit
set -gx EDITOR ~/.local/bin/nvim
set -gx VISUAL ~/.local/bin/nvim

alias ll='ls -lAhvN --group-directories-first'

eval "$(mise activate fish)"

# BEGIN ANSIBLE MANAGED BLOCK: asdf config
source ~/.asdf/asdf.fish
# END ANSIBLE MANAGED BLOCK: asdf config
set -g theme_nerd_fonts yes

# nvim w/Godotengine listener socket
function gamedev -a path
  cd $path
  nvim --listen ./godothost .
end

alias bb="gamedev ~/src/botb/godot"

# git alias for managing the dotfile repo.
# See https://gitlab.com/mookle/dotfiles for more info
alias dot="git --work-tree=$HOME"

zoxide init fish | source

# Starship prompt
starship init fish | source
enable_transience

