#!/bin/bash

echo "install treesitter rust parser and lsp rust_analyzer server"
nvim --headless -c "TSUpdateSync rust" -c "LspInstall --sync rust_analyzer" -c "q"
