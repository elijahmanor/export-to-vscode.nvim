# export-to-vscode.nvim

![Demo.gif](https://user-images.githubusercontent.com/86454/133836554-43706f03-ef1a-4a87-8d11-a606a53d8845.gif)

## About

This is a Neovim plugin that will take all of the active buffers and open them
as tabs in VS Code. It will make sure the active buffer from Neovim is the
active tab in VS Code with the same line and cursor position focus.

If you you would like a code walkthrough explaining how the code works (before
it was extracted into this plugin), check out the associated [Export Neovim
Bufffers to VS Code](https://elijahmanor.com/blog/export-neovim-to-vscode) blog
post.

## Requirements

* Neovim >= 0.5

## Installation

### [packer.nvim](https://github.com/wbthomason/packer.nvim/)

```lua
use 'elijahmanor/export-to-vscode.nvim'
```

### [paq-nvim](https://github.com/savq/paq-nvim/)

```lua
paq 'elijahmanor/export-to-vscode.nvim'
```

### [vim-plug](https://github.com/junegunn/vim-plug/)

```vim
Plug 'elijahmanor/export-to-vscode.nvim'
```

## Usage

No default mappings are provided, so you'll either need to manually trigger the
export function or create a custom mapping. Here is an example of how you might
create a remap.

### Manually Triggger from Command Mode

```lua
:lua require('export-to-vscode').launch()
```

### Vim Script

```viml
nnoremap <silent> <leader>code <cmd>lua require('export-to-vscode').launch()<cr>
```

### Lua

```lua
vim.api.nvim_set_keymap(
  'n',
  '<leader>code',
  '<cmd>lua require("export-to-vscode").launch()<cr>',
  { noremap = true, silent = true }
)
```

