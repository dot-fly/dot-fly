#!/bin/bash

echo "install treesitter python parser"
mv ~/.config/nvim/lua/lsp/servers ~/.config/nvim/lua/lsp/servers-copy
mv ~/.config/nvim/lua/treesitter/parsers ~/.config/nvim/lua/treesitter/parsers-copy
nvim --headless -c "TSUpdateSync python" -c "q"
mv ~/.config/nvim/lua/lsp/servers-copy ~/.config/nvim/lua/lsp/servers
mv ~/.config/nvim/lua/treesitter/parsers-copy ~/.config/nvim/lua/treesitter/parsers
