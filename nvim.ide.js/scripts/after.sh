#!/bin/bash

echo "install treesitter javascript, typescript parser and lsp tsserver server"
nvim --headless -c "TSUpdateSync javascript typescript" -c "LspInstall --sync tsserver" -c "q"
