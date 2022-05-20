#!/bin/bash

echo "install treesitter vim parser"
nvim --headless -c "TSUpdateSync vim" -c "q"
