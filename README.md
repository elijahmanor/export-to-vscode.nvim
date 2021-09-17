# export-to-vscode.nvm

## About

Neovim plugin to export active buffers to VS Code

![Demo.gif]()

## Requirements

* Neovim >= 0.5

## Installation

* [packer.nvim](https://github.com/wbthomason/packer.nvim/):
```
use 'elijahmanor/export-to-vscode.nvim'
```

* [paq-nvim](https://github.com/savq/paq-nvim/)

```
paq 'elijahmanor/export-to-vscode.nvim'
```

* [vim-plug](https://github.com/junegunn/vim-plug/):

```
Plug 'elijahmanor/export-to-vscode.nvim'
```

## Usage

No default mappings are provided, so you'll either need to manually trigger the
export function or create a custom mapping. Here is an example of how you might
create a remap.

## Manually Triggger from Command Mode

```
:lua require('export-to-vscode').launch()
```

### Vim Script

```
nnoremap <silent> <leader>code <cmd>lua require('export-to-vscode').launch()<cr>
```

### Lua

```
vim.api.nvim_set_keymap(
  'n',
  '<leader>code',
  '<cmd>lua require()',
  { noremap = true, silent = true }
)
```

