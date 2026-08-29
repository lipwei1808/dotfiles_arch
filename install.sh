#!/usr/bin/env bash

set -eu

repo_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
backup_dir="$HOME/.dotfiles-backup/$(date +%Y%m%d-%H%M%S)"
backup_created=false

link_file() {
  source_path=$1
  target_path=$2

  if [[ -L "$target_path" && $(readlink -f -- "$target_path") == "$source_path" ]]; then
    printf 'Already linked: %s\n' "$target_path"
    return
  fi

  if [[ -e "$target_path" || -L "$target_path" ]]; then
    if [[ $backup_created == false ]]; then
      mkdir -p -- "$backup_dir"
      backup_created=true
    fi

    printf 'Backing up:    %s\n' "$target_path"
    mv -- "$target_path" "$backup_dir/"
  fi

  mkdir -p -- "$(dirname -- "$target_path")"
  ln -s -- "$source_path" "$target_path"
  printf 'Linked:        %s -> %s\n' "$target_path" "$source_path"
}

link_file "$repo_dir/zshrc" "$HOME/.zshrc"
link_file "$repo_dir/vimrc" "$HOME/.vimrc"
link_file "$repo_dir/vim" "$HOME/.vim"
link_file "$repo_dir/gitconfig" "$HOME/.gitconfig"
link_file "$repo_dir/tmux.conf" "$HOME/.tmux.conf"
link_file "$repo_dir/npmrc" "$HOME/.npmrc"

if [[ $backup_created == true ]]; then
  printf '\nPrevious files were saved in %s\n' "$backup_dir"
fi

