#!/bin/bash

while read -r dir; do
  zshrc_path=${DOTFILES_ROOTS:-~/.dotfiles}/"$dir"/zshrc

  if [[ ! -d "$zshrc_path" ]]; then
    continue
  fi

  while read -r src; do
    dst_dir="$(dirname "$HOME/.zshrc.d/"$dir"/${src#${DOTFILES_ROOTS:-~/.dotfiles}/*/zshrc/}")"
    dst_file="$(basename "$src")"
    dst="$dst_dir/$dst_file"

    if [[ ! -e "$dst" ]]; then
      if [[ ! -d "$dst_dir)" ]]; then
        mkdir -p "$dst_dir"
      fi
      ln -s "$src" "$dst"
    fi
  done < <(find "$zshrc_path" -type f)

  zshenv_path=${DOTFILES_ROOTS:-~/.dotfiles}/"$dir"/zshenv

  if [[ ! -d "$zshenv_path" ]]; then
    continue
  fi

  while read -r src; do
    dst_dir="$(dirname "$HOME/.zshenv.d/"$dir"/${src#${DOTFILES_ROOTS:-~/.dotfiles}/*/zshenv/}")"
    dst_file="$(basename "$src")"
    dst="$dst_dir/$dst_file"

    if [[ ! -e "$dst" ]]; then
      if [[ ! -d "$dst_dir)" ]]; then
        mkdir -p "$dst_dir"
      fi
      ln -s "$src" "$dst"
    fi
  done < <(find "$zshenv_path" -type f)

  zprofile_path=${DOTFILES_ROOTS:-~/.dotfiles}/"$dir"/zprofile

  if [[ ! -d "$zprofile_path" ]]; then
    continue
  fi

  while read -r src; do
    dst_dir="$(dirname "$HOME/.zprofile.d/"$dir"/${src#${DOTFILES_ROOTS:-~/.dotfiles}/*/zprofile/}")"
    dst_file="$(basename "$src")"
    dst="$dst_dir/$dst_file"

    if [[ ! -e "$dst" ]]; then
      if [[ ! -d "$dst_dir)" ]]; then
        mkdir -p "$dst_dir"
      fi
      ln -s "$src" "$dst"
    fi
  done < <(find "$zprofile_path" -type f)
done
