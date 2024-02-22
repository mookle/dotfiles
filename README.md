# ~/

Configuration files for my local development setup.


## Installation

```bash
git clone --bare git@github.com:mookle/dotfiles.git $HOME/.git
```

Cloning to `.git` allows Neovim to discover the root of the working tree, which is helpful for operations like fuzzy file-finding. For the same reason, irrelevant paths are ignored via `.gitignore`, rather than using `git status --untracked-files=no` on the command line.


## Usage

```bash
dot <command> 
```

An alias for `git --work-tree=$HOME <command>`; needed when working with a bare repository.


## Placeholder Tokens

Some files contain placeholder tokens in lieu of sensitive data. Once the placeholders have been updated, accidental commits can be avoided by telling git to skip the file in question. E.g:

```bash
dot update-index --skip-worktree .gitconfig
```

Note that `update-index` is a local operation, so each clone will need to repeat it. If needed (e.g. when switching between branches) the update can be reversed with `--no-skip-worktree`.
