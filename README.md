# OneHalf

The same fantasic color palette from [sonph](https://github.com/sonph/onehalf)'s OneHalf colorscheme with added support for some plugins and tweaks to improve highlights

> **:warning: Warning**: This colorscheme is still under active development. If you encounter any issues, PLEASE open an issue.

- Images are coming
# Installation

You can install this plugin using your preferred plugin manager. For example:

For those using lazy:

```lua
{
    'clearaspect/onehalf',
    lazy = false,
    priority = 1000,
}
```

For those using packer:

```lua
use { 'clearaspect/onehalf' }
```

For vim-plug:

```vim
Plug 'clearaspect/onehalf'
```

After installation, set the colorscheme with: `colorscheme onehalf`

# Features

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [WhichKey](https://github.com/liuchengxu/vim-which-key)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [Blink Completion](https://github.com/Saghen/blink.cmp)

# Changes

- Reduced the contrast of delimiter colors for improved visual comfort
- Added highlight groups for UI components to enhance plugin compatibility
- Implemented completion menu highlight groups (Tested with Blink Completion, should also work with nvim-cmp)

# Todo

- Adjust Neogit and Diffview highlighting.
- Fix Bufferline background
- Setup Function
