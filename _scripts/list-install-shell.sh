#!/bin/bash

# get collection directory field count for sort command
__sort_field_count=$(tr -dc '/' <<<${DOTFILES_ROOTS:-~/.dotbrick} | awk '{ print length + 2; }')

find ${DOTFILES_ROOTS:-~/.dotbrick}/*/scripts -name install.sh | sort -t '/' -k"$__sort_field_count","$__sort_field_count"
