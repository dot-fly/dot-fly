#!/bin/bash

echo "install treesitter python parser"
nvim --headless -c "TSUpdateSync python" -c "q"
