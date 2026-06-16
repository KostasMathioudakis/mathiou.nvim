## Vim commands

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `gg` | `g g` | Normal | Go to the first line in the file |
| `G` | `Shift + g` | Normal | Go to the last line in the file |
| `ggyG` | `g g y Shift + g` | Normal | Yank the entire file |
| `gg"+yG` | `g g " + y Shift + g` | Normal | Copy the entire file to the system clipboard |
| `ggdG` | `g g d Shift + g` | Normal | Delete the entire file |
| `gg"_dG` | `g g " _ d Shift + g` | Normal | Delete the entire file without yanking |
| `gg=G` | `g g = Shift + g` | Normal | Reindent the entire file |
| `=ap` | `= a p` | Normal | Reindent the current paragraph |
| `<leader>pv` | `Space p v` | Normal | Open Oil’s editable directory buffer |
| `<leader>pt` | `Space p t` | Normal | Toggle Neo-tree as a project sidebar and reveal the current file |
| `<leader>pf` | `Space p f` | Normal | Open Neo-tree as a floating file explorer |

## Oil

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<CR>` | `Enter` | Oil buffer | Open the file or directory under the cursor |
| `-` | `-` | Oil buffer | Go to the parent directory |
| `_` | `Shift + -` | Oil buffer | Open the current working directory |
| `g?` | `g ?` | Oil buffer | Show Oil help |
| `g.` | `g .` | Oil buffer | Toggle hidden files |
| `<C-r>` | `Control + r` | Oil buffer | Refresh the directory buffer |
| `:w` | `: w` | Oil buffer | Apply filesystem edits made in the buffer |

## Neo-tree

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `?` | `?` | Neo-tree buffer | Show Neo-tree help |
| `<CR>` | `Enter` | Neo-tree buffer | Open or expand the focused item |
| `S` | `Shift + s` | Neo-tree buffer | Open in a horizontal split |
| `s` | `s` | Neo-tree buffer | Open in a vertical split |
| `t` | `t` | Neo-tree buffer | Open in a new tab |
| `a` | `a` | Neo-tree buffer | Add a file or directory |
| `d` | `d` | Neo-tree buffer | Delete the focused file or directory |
| `r` | `r` | Neo-tree buffer | Rename the focused file or directory |
| `y` | `y` | Neo-tree buffer | Copy the focused file or directory to the clipboard |
| `x` | `x` | Neo-tree buffer | Cut the focused file or directory to the clipboard |
| `p` | `p` | Neo-tree buffer | Paste from the Neo-tree clipboard |
| `H` | `Shift + h` | Neo-tree buffer | Toggle hidden and filtered items |
| `R` | `Shift + r` | Neo-tree buffer | Refresh the tree |

## Telescope

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<leader>ff` | `Space f f` | Normal | Find files tracked by Git |
| `<leader>fa` | `Space f a` | Normal | Find files in the current working directory |
| `<leader>fg` | `Space f g` | Normal | Search text across project files with `live_grep` |
| `<leader>fb` | `Space f b` | Normal | Search and switch between open buffers |
| `<leader>fh` | `Space f h` | Normal | Search Neovim help documentation |


## Harpoon

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<M-a>` | `Command a` on macOS / `Alt a` on Linux or Windows | Normal | Add the current file to Harpoon |
| `<M-e>` | `Command e` on macOS / `Alt e` on Linux or Windows | Normal | Open the Harpoon quick menu |
| `<M-1>` | `Command 1` on macOS / `Alt 1` on Linux or Windows | Normal | Jump to Harpoon file 1 |
| `<M-2>` | `Command 2` on macOS / `Alt 2` on Linux or Windows | Normal | Jump to Harpoon file 2 |
| `<M-3>` | `Command 3` on macOS / `Alt 3` on Linux or Windows | Normal | Jump to Harpoon file 3 |
| `<M-4>` | `Command 4` on macOS / `Alt 4` on Linux or Windows | Normal | Jump to Harpoon file 4 |
| `<M-d>` | `Command d` on macOS / `Alt d` on Linux or Windows | Normal | Remove the current file from Harpoon |
| `j` / `k` | `j` / `k` | Harpoon menu | Move down or up through the Harpoon list |
| `dd` | `d d` | Harpoon menu | Remove the entry under the cursor |
| `q` / `Esc` | `q` / `Esc` | Harpoon menu | Close the Harpoon menu |

## Lazy

| Command | Action |
|---|---|
| `:Lazy` | Open the Lazy plugin manager |
| `:Lazy sync` | Install missing plugins, update existing plugins, and remove unused plugins |
| `:Lazy install` | Install missing plugins |
| `:Lazy update` | Update installed plugins |
| `:Lazy clean` | Remove plugins that are no longer declared in your configuration |
| `:Lazy check` | Check whether plugin updates are available |

## Tree-sitter Manager

| Command | Action |
|---|---|
| `:TSManager` | Open the Tree-sitter parser management interface |
| `:TSInstall java` | Install a parser, for example the Java parser |
| `:TSInstall java typescript rust` | Install multiple parsers |
| `:TSUninstall java` | Uninstall a parser |
| `i` | Install the parser under the cursor inside `:TSManager` |
| `x` | Remove the parser under the cursor |
| `u` | Update the parser under the cursor |
| `r` | Refresh parser installation status |
| `q` / `Esc` | Close the Tree-sitter Manager window |
