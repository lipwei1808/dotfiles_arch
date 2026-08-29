# Arch dotfiles

Personal configuration for zsh, Vim, and Git on Arch Linux.

## Included

- `zshrc` → `~/.zshrc`
- `vimrc` → `~/.vimrc`
- `vim/` → `~/.vim`
- `gitconfig` → `~/.gitconfig`

## Install

Clone the repository, then run:

```sh
./install.sh
```

The installer creates symbolic links from the files in this repository to the
corresponding locations in your home directory. Existing files are moved to a
timestamped directory under `~/.dotfiles-backup/` before they are replaced.

Restart the shell after installation, or reload zsh with:

```sh
source ~/.zshrc
```

## Requirements

- Git
- zsh
- Vim

