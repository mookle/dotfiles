# sync history across sessions
bind \e\[A 'history --merge ; up-or-search'

# default editor
set -gx EDITOR ~/.local/bin/nvim
set -gx VISUAL ~/.local/bin/nvim

# who doesn't like glyphs?
set -g theme_nerd_fonts yes

# mise tooling
eval "$(mise activate fish)"

# fuzzy `cd` with a frecency heuristic
zoxide init fish | source

# Starship prompt
starship init fish | source
enable_transience

alias ll='ls -lAhvN --group-directories-first'
