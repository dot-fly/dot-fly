#!/bin/bash

while read uninstaller; do
  bash "$uninstaller"
done < <(find ${DOTFILES_ROOTS:-~/.dotbrick}/*/scripts -name uninstall.sh)
