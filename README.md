# nvim

Neovim configurations (lazy.nvim, LSP, Telescope, Treesitter, Git, and more).

## Installation

```sh
git clone https://github.com/joeyshi12/nvim.git ~/.config/nvim
```

## Shortcuts

Leader is **Space**. Per-language bindings are in `after/ftplugin/` and plugin configs under `lua/plugins/`.

| Mapping | Action |
|---------|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fs` / `<leader>fS` | Document / workspace symbols (LSP, Telescope) |
| `<leader>pf` | Git files |
| `<leader>pc` | Git status |
| `<C-n>` / `<C-p>` | Next / previous tab |
| `<leader>y` | Yank to system clipboard |
| `gl` | Diagnostic float (LSP) |

Insert mode: `Ctrl+Space` completion, `Ctrl+K` snippet expand, `Ctrl+L` / `Ctrl+J` snippet jump (see `lua/plugins/lsp.lua`).

## LSP

- **Format buffer:** `:lua vim.lsp.buf.format()` when a formatter is available through the language server. Rust maps this to `<leader>rf` in `after/ftplugin/rust.lua`.
- **Organize / sort imports:** usually a code action (`:lua vim.lsp.buf.code_action()` or the picker your config maps). Rust maps `source.organizeImports` to `<leader>ri` in the same file.
- **Symbols:** `<leader>fs` / `<leader>fS` (Telescope); **diagnostics:** `gl`.

Add similar keymaps for other languages in `after/ftplugin/<filetype>.lua` or an `LspAttach` autocommand if you want the same ergonomics everywhere.

## Adding plugins

Add a file under `lua/plugins/` returning a lazy.nvim spec: `user/repo`, optional `opts`, and optional `config`. Multiple plugin tables can live in one file.
