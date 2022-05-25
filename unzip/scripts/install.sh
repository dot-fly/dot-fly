#!/bin/bash

echo "unzip installer"

if [[ -f "/etc/arch-release" ]]; then
  # the requirements to install lsp server
  pacman -S --noconfirm unzip
fi
