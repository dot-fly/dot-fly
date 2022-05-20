#!/bin/bash

echo "install treesitter bash parser"
nvim --headless -c "TSUpdateSync bash" -c "q"
