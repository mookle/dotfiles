# ~/.*

Config files with a bonus bootstrap script; because system setup is tedious.

## Installation

No need to clone, just run:
 
```bash
curl -L https://gitlab.com/mookle/dotfiles/-/raw/main/bin/bootstrap | bash
```

The bootstrap script leverages [stow][1] to get the dotfiles into place and [mise][2] to install and configure various dev tools. The script also takes care of a few additional bits of housekeeping.

The specifics of what happens during the bootstrap process can be found in these places:

- `bin/bootstrap`. Core tools, bootstrap deps, and which mise tasks are run.
- `.config/mise/config.toml`. Additional tooling installed via mise.
- `.config/mise/tasks/*`. mise task definitions.

### N.B. Don't `curl` and run (!!)

The bootstrap process will prompt for user auth multiple times, so don't start the process and run off to 🥪 (or even 🫖). The script may be sophisicated enough to prompt just once (like Ansible's `--ask-vault-pass`) one day, but that day is not today...

 
[1]: https://www.gnu.org/software/stow/
[2]: https://mise.jdx.dev/
