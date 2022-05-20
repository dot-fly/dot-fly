#!/bin/bash

echo "install treesitter lua parser and lsp sumneko_lua server"
nvim --headless -c "TSUpdateSync lua" -c "LspInstall --sync sumneko_lua" -c "q"
