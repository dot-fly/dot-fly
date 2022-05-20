#!/bin/bash

echo "install treesitter vue parser"
nvim --headless -c "TSUpdateSync vue" -c "q"
