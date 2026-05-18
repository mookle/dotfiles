# sync history across sessions
bind \e\[A 'history --merge ; up-or-search'

# default editor
set -gx EDITOR ~/.local/bin/nvim
set -gx VISUAL ~/.local/bin/nvim

# who doesn't like glyphs?
set -g theme_nerd_fonts yes

# mise tooling
mise activate fish | source

# fuzzy `cd` with a frecency heuristic
zoxide init --cmd cd fish | source

# Starship prompt
starship init fish | source
enable_transience

alias ll='ls -lAhvN --group-directories-first'

alias :q='exit'
