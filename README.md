NeoVim IDE config based on [LazyVim](https://github.com/LazyVim/LazyVim) starter template.

Using standard DAP, LSP and tree-sitter providing near identical capabilities to VSCode/Codium.

Tested mainly with PHP and secondarily with Python.

![Regular View 20231202](https://github.com/jasalt/nvim/assets/2306521/ed2e93a3-c60d-4a69-a9d3-ce9c057a4bcd)

# Custom additions worth a separate mentioning

- High contrast white theme `lua/plugins/theme.lua`
- Treesitter-context `lua/plugins/treesitter-context.lua`
- PHP Intelephense LSP with k&r formatting option `lua/plugins/lsp.lua` (for WP code style)
- VSCode nvim plugin aware DAP setup `init.lua`

# Install notes
## Usage with `tmux`
Run `:checkhealth` command to see possible issues with configuration.

### Example configuration for truecolor support in case of color rendering fails (tmux 3.0a)

```
# ~/.tmux.conf

set -sg escape-time 10
set-option -g focus-events on

# True color settings
set -g default-terminal "screen-256color"
set -ag terminal-overrides ",$TERM:Tc"
```
### Nerdicons / icons in file browser

Custom font icons may not load with messed up locale configuration. Running `tmux` with `-u` flag can help as temporary fix eg. `tmux -u a`.

## Usage without access to C-compiler (experimental)

Zig compiler (https://ziglang.org/download/) is easy to install to path, but for some tree-sitter parsers that fail compiling with it, they can be compiled elsewhere and moved to nvim install path eg. with extracted release archive in `nvim-linux64/lib/nvim/parser/`. 

Eg. `rsync -av ~/.local/share/nvim/lazy/nvim-treesitter/parser/twig.so <hostname>:~/bin/nvim-linux64/lib/nvim/parser/`.

# Debugging PHP

Nvim *should be started in WordPress root folder* so that LSP finds all definitions etc. 
Afterwards sidebar tree view root can be adjusted with `.` to hide unnecessary files.

Default breakpoints on exceptions, errors etc. can be modified in `init.lua` by setting `dap.defaults.php.exception_breakpoints` value.

## Debugger example

Debugging PHP backend code (WordPress plugin) serving data to a HTMX front-end view. Server runs on [VVV Vagrant](https://github.com/svandragt/htmxpress) development VM. 

[HTMXPress](https://github.com/svandragt/htmxpress) live search demo with "t" typed into live search box
![Demo Website using AJAX](https://github.com/jasalt/nvim/assets/2306521/ccbf9707-219f-4ecc-a5e7-570ca08e8d19)

Request intercepted by XDebug with step-debugging, interactive evaluation etc:

![Debugger View with step debugging](https://github.com/jasalt/nvim/assets/2306521/e618510e-e584-4144-942a-52bdc04bfe93)

# Custom Keybindings Cheat Sheet

Space is the `<leader>` key and regular VIM motions are otherwise expected, mostly following LazyVim starter config bindings.

## Editing

| Go To Definition | gd         |
| Delete buffer    | <leader>bd |

## Debugging

| Add Breakpoint              | <leader>db | <leader>F5 |
| Start Debugger (continue)   | <leader>dc |            |
| Stop on all (default)       | <leader>dA |            |
| Stop on all but notify      | <leader>da |            |
| Stop on none but breakpoint | <leader>d0 |            |
| Show / Hide DAP UI          | <leader>du |            |

## Misc

| Toggle folder tree view | <leader>e  |
| Disable indent on save  | <leader>uf |

# Notes

Made by NeoVim novice, includes mindlessly copy pasted code from various source. 
Refer to LazyVim docs and discussions etc to understand the overall structure better.

Readme, repo commit messages and some parts of code included are written with Emacs.

More notes while figuring this out on [LazyVim discussions](https://github.com/LazyVim/LazyVim/discussions/645).

## Todo

- how to run eval configuration functions during runtime?
- decent git integration, included lazygit is not on magit level, maybe fugitive?
