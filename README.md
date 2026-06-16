# Neovim Config

A compact Lazy.nvim-based Neovim setup focused on fast project navigation, LSP support, fuzzy finding, Git workflow helpers, and two complementary file explorers.

## Highlights

- Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim)
- Completion: [blink.cmp](https://github.com/Saghen/blink.cmp)
- LSP installer/config: Mason, mason-lspconfig, nvim-lspconfig
- Fuzzy finding: Telescope with fzf-native
- File explorers:
  - Oil for editable directory buffers
  - Neo-tree for a persistent project sidebar and floating explorer
- Navigation: Harpoon 2
- Git: vim-fugitive
- Undo history: undotree
- Icons: nvim-web-devicons
- Theme: carbonfox, with transparent editor backgrounds

## Requirements

- Neovim 0.11+ recommended
- Git
- A C compiler and `make` for `telescope-fzf-native.nvim`
- `ripgrep` for Telescope live grep
- A Nerd Font for icons, for example `JetBrainsMono Nerd Font Mono`
- Optional language tooling:
  - `tree-sitter` CLI for tree-sitter parser management
  - `clippy` for Rust analyzer checks

The config bootstraps lazy.nvim automatically on first launch.

## Install

Back up any existing config first.

### Linux

```sh
mv ~/.config/nvim ~/.config/nvim.bak
git clone <your-repo-url> ~/.config/nvim
nvim
```

### macOS

```sh
mv ~/.config/nvim ~/.config/nvim.bak
git clone <your-repo-url> ~/.config/nvim
nvim
```

### Windows PowerShell

```powershell
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
git clone <your-repo-url> $env:LOCALAPPDATA\nvim
nvim
```

On first launch, Lazy will install the declared plugins. To force a full install/update, run:

```vim
:Lazy sync
```

## Fonts

Terminal Neovim uses the font configured in your terminal emulator. Set your terminal font to a Nerd Font for icons to render correctly.

GUI Neovim clients use:

```lua
vim.opt.guifont = "JetBrainsMono Nerd Font Mono:h12"
```

## Keymaps

The leader key is `Space`.

See [shortcuts.md](shortcuts.md) for the full shortcut reference. Keep mappings documented there so the README and shortcut tables do not drift.

## File Explorer Notes

Oil is configured as the default directory explorer, so opening a directory with Neovim uses Oil.

Neo-tree is configured to:

- Follow the current file
- Show hidden files
- Show Git-ignored files
- Avoid hijacking netrw behavior, leaving Oil as the default directory explorer

## Structure

```text
init.lua
lua/config/       core options, keys, lazy bootstrap, colors, LSP keymaps
lua/plugins/      Lazy plugin specs
shortcuts.md      fuller shortcut reference
lazy-lock.json    pinned plugin versions
```

## Maintenance

Useful Lazy commands:

```vim
:Lazy
:Lazy sync
:Lazy update
:Lazy clean
:Lazy check
```

Mason-managed language servers are declared in `lua/plugins/lsp.lua`.
