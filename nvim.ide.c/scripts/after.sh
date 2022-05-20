#!/bin/bash

echo "install treesitter c, cpp parser"
nvim --headless -c "TSUpdateSync c cpp" -c "q"
