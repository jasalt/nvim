NeoVim config based on starter template for [LazyVim](https://github.com/LazyVim/LazyVim) focusing on programming IDE features using standard DAP, LSP and tree-sitter facilities. Tested and tweaked mostly to work with PHP and secondarily with Python. VSCode has not been needed since.

# Regular view

![Screenshot_20231202_200251](https://github.com/jasalt/nvim/assets/2306521/ed2e93a3-c60d-4a69-a9d3-ce9c057a4bcd)

# Debug view with PHP 
Debugging PHP backend code (WordPress plugin) serving data to a HTMX front-end view. Server runs on [VVV Vagrant](https://github.com/svandragt/htmxpress) development VM.

[HTMXPress](https://github.com/svandragt/htmxpress) live search demo with "t" typed into live search box
![Screenshot_20231202_202027](https://github.com/jasalt/nvim/assets/2306521/ccbf9707-219f-4ecc-a5e7-570ca08e8d19)

Request intercepted by XDebug with step-debugging, interactive evaluation etc:
![Screenshot_20231202_202149](https://github.com/jasalt/nvim/assets/2306521/e618510e-e584-4144-942a-52bdc04bfe93)

More documentation about PHP IDE config on [LazyVim discussions](https://github.com/LazyVim/LazyVim/discussions/645). Code is not very polished but it is working and I might come back to it at some point. 

# Disclaimer

Made by a person who is quite new to NeoVim. Includes mindlessly copy pasted code from various source. Refer to LazyVim docs and discussions etc to understand the overall structure better.

Readme, repo commit messages and some parts of code included are written with Emacs.
