## Vim commands

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `gg` | `g g` | Normal | Go to the first line in the file |
| `G` | `Shift + g` | Normal | Go to the last line in the file |
| `zz` | `z z` | Normal | Center the current cursor line in the window |
| `ggyG` | `g g y Shift + g` | Normal | Yank the entire file |
| `gg"+yG` | `g g " + y Shift + g` | Normal | Copy the entire file to the system clipboard |
| `ggdG` | `g g d Shift + g` | Normal | Delete the entire file |
| `gg"_dG` | `g g " _ d Shift + g` | Normal | Delete the entire file without yanking |
| `gg=G` | `g g = Shift + g` | Normal | Reindent the entire file |
| `=ap` | `= a p` | Normal | Reindent the current paragraph |
| `<leader>pv` | `Space p v` | Normal | Open Oil’s editable directory buffer |
| `<leader>pt` | `Space p t` | Normal | Toggle Neo-tree as a project sidebar and reveal the current file |
| `<leader>pf` | `Space p f` | Normal | Open Neo-tree as a floating file explorer |

## Basic jump motions

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `w` | `w` | Normal | Jump to the start of the next word |
| `b` | `b` | Normal | Jump backward to the start of the previous word |
| `e` | `e` | Normal | Jump to the end of the current or next word |
| `0` | `0` | Normal | Jump to the first column of the line |
| `^` | `Shift + 6` | Normal | Jump to the first non-blank character of the line |
| `$` | `Shift + 4` | Normal | Jump to the end of the line |
| `%` | `Shift + 5` | Normal | Jump to the matching bracket, parenthesis, or brace |
| `{` | `Shift + [` | Normal | Jump to the previous paragraph or block |
| `}` | `Shift + ]` | Normal | Jump to the next paragraph or block |
| `Ctrl + d` | `Control + d` | Normal | Jump down half a screen |
| `Ctrl + u` | `Control + u` | Normal | Jump up half a screen |
| `<C-o>` | `Control + o` | Normal | Jump backward through the jump list |
| `<C-i>` | `Control + i` | Normal | Jump forward through the jump list |
| `gd` | `g d` | Normal | Jump to definition when LSP is attached |
| `gD` | `g Shift + d` | Normal | Jump to declaration when LSP is attached |
| `gi` | `g i` | Normal | Jump to implementation when LSP is attached |
| `gr` | `g r` | Normal | Jump to references when LSP is attached |
| `gf` | `g f` | Normal | Jump to the file path under the cursor |
| `g;` | `g ;` | Normal | Jump to the previous change position |
| `g,` | `g ,` | Normal | Jump to the next change position |

## LSP

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<M-x>` | `Option x` on macOS / `Alt x` on Linux or Windows | Normal | Toggle LSP inlay hints for the current buffer |

On macOS, the terminal may need Option configured as Esc/Meta for `<M-x>` mappings to reach Neovim.

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

## Completion

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<Tab>` | `Tab` | Insert | Accept the selected completion item; if inside a snippet, advance through the snippet |
| `<S-Tab>` | `Shift + Tab` | Insert | Move backward through snippet placeholders |
| `<Up>` | `Up arrow` | Insert / command-line | Select the previous completion item |
| `<Down>` | `Down arrow` | Insert / command-line | Select the next completion item |
| `<Esc>` | `Escape` | Insert | Leave insert mode, closing completion UI as part of returning to normal mode |
| `<Esc>` | `Escape` | Command-line | Hide the completion menu |
| `<Tab>` | `Tab` | Command-line | Accept the selected command-line completion |
| `<CR>` | `Enter` | Command-line | Execute the typed command as-is without accepting a completion |

## Formatting

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<M-f>` | `Option f` on macOS / `Alt f` on Linux or Windows | Normal / Visual | Format the current buffer or selected range with Conform |

On macOS, the terminal may need Option configured as Esc/Meta for `<M-f>` mappings to reach Neovim.

## Commenting

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<C-/>` | `Control + /` | Normal | Toggle a filetype-aware line comment on the current line |
| `<C-/>` | `Control + /` | Visual | Toggle filetype-aware line comments on the selected lines |

Some terminals send `Control + /` to Neovim as `<C-_>`; this config supports both forms.

## Harpoon

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<M-a>` | `Option a` on macOS / `Alt a` on Linux or Windows | Normal | Add the current file to Harpoon |
| `<M-e>` | `Option e` on macOS / `Alt e` on Linux or Windows | Normal | Open the Harpoon quick menu |
| `<M-1>` | `Option 1` on macOS / `Alt 1` on Linux or Windows | Normal | Jump to Harpoon file 1 |
| `<M-2>` | `Option 2` on macOS / `Alt 2` on Linux or Windows | Normal | Jump to Harpoon file 2 |
| `<M-3>` | `Option 3` on macOS / `Alt 3` on Linux or Windows | Normal | Jump to Harpoon file 3 |
| `<M-4>` | `Option 4` on macOS / `Alt 4` on Linux or Windows | Normal | Jump to Harpoon file 4 |
| `<M-d>` | `Option d` on macOS / `Alt d` on Linux or Windows | Normal | Remove the current file from Harpoon |
| `j` / `k` | `j` / `k` | Harpoon menu | Move down or up through the Harpoon list |
| `dd` | `d d` | Harpoon menu | Remove the entry under the cursor |
| `q` / `Esc` | `q` / `Esc` | Harpoon menu | Close the Harpoon menu |

On macOS, the terminal may need Option configured as Esc/Meta for `<M-...>` mappings to reach Neovim.

## Rust Tasks

| Shortcut | Actual keys | Mode | Action |
|---|---|---|---|
| `<leader>cr` | `Space c r` | Normal | Start `cargo run` in Overseer |
| `<leader>cc` | `Space c c` | Normal | Start `cargo check` in Overseer |
| `<leader>cb` | `Space c b` | Normal | Start `cargo build` in Overseer |
| `<leader>cw` | `Space c w` | Normal | Start `cargo watch -x run` in Overseer |
| `<leader>ct` | `Space c t` | Normal | Start `cargo test` in Overseer |
| `<M-q>` | `Option q` on macOS / `Alt q` on Linux or Windows | Overseer task output / task list | Stop the task and close the task output, or close the task list |

On macOS, the terminal may need Option configured as Esc/Meta for `<M-q>` mappings to reach Neovim.

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
