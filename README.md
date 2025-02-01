# OneHalf

The same fantasic color palette from [sonph](https://github.com/sonph/onehalf)'s OneHalf colorscheme, but written in lua with added support for plugins and tweaks to improve highlights

Includes both OneHalfDark & OneHalfLight colorschemes
<img width="1609" alt="OneHalfDarkHeader" src="https://github.com/user-attachments/assets/87b49bd3-2576-4df4-b9e5-08eec7d77d4c" />
<img width="1609" alt="OneHalfLightHeader" src="https://github.com/user-attachments/assets/5d1f6539-cef7-4929-91de-d9d3639273c8" />

> [!WARNING]
>This has only been tested with my own custom configuration. If you encounter any problems or have any requests, PLEASE open an issue.

## 📦 Installation

You can install this plugin using your preferred plugin manager. For example:

Using [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
{
    'clearaspect/onehalf',
    lazy = false,
    priority = 1000,
}
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):
```lua
use { 'clearaspect/onehalf' }
```

After installation, set the colorscheme with: `:colorscheme onehalfdark` or `:colorscheme onehalflight`

## ✨ Features

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [WhichKey](https://github.com/liuchengxu/vim-which-key)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [Blink Completion](https://github.com/Saghen/blink.cmp)

## Changes from the original

- Reduced the contrast of delimiter colors for improved visual comfort
- Built modular infrastructure for easy plugin integration
- Refined UI element highlighting for better consistency
- Added smart color blending for diff views and git changes
- Extended support for modern Neovim plugins
- Maintained the original OneHalf palette while improving readability

## Credits

- [sonph](https://github.com/sonph/onehalf) - Creator of the original OneHalf color palette
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Project structure inspiration
- [catppuccin/nvim](https://github.com/catppuccin/nvim) - Project structure inspiration

This project wouldn't be possible without the beautiful OneHalf color palette created by sonph, and the excellent project structure examples from the tokyonight and catppuccin Neovim themes.
