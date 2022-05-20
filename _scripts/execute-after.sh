#!/bin/bash

while read -r dir; do
  if [ -n "$dir" ]; then
    __CONFIG_FILE=${DOTFILES_ROOTS:-~/.dotbrick}/"$dir".txt
    if [[ -r "$__CONFIG_FILE" ]]; then
      source ${DOTFILES_ROOTS:-~/.dotbrick}/_scripts/execute-after.sh <"$__CONFIG_FILE"
      continue
    fi

    __after_script_path=${DOTFILES_ROOTS:-~/.dotbrick}/"$dir"/scripts/after.sh
    if [ -f "$__after_script_path" ]; then
      source "$__after_script_path"
    fi
  fi
done
