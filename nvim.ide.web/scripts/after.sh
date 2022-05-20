#!/bin/bash

echo "install treesitter html, css, scss parser"
nvim --headless -c "TSUpdateSync html css scss" -c "q"
