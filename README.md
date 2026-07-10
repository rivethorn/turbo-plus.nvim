# Turbo-Plus.nvim

A modern recreation of the Turbo C++ colorscheme for Neovim, available in two variants.

<details>
  <summary> Gallery (Click to expand) </summary>

##### Rust
![Rust-Example](./example-rs.png)

##### CPP
![CPP-Example](./example-cpp.png)

##### TypeScript
![TS-Example](./example-ts.png)

##### Python
![Python-Example](./example-py.png)

##### Odin
![Odin-Example](./example-odin.png)
  
</details>

## Variants

### Turbo-Plus (Default)
A softer, modern take on the Turbo C++ aesthetic. Uses muted blues and cyans with carefully chosen accent colors for enhanced readability on contemporary displays.

```lua
vim.cmd.colorscheme("turbo-plus")
```

### Turbo-Plus-Classic
A faithful recreation of the original Turbo C++ application's colors with enhanced syntax highlighting. Features the authentic deep blue background (#000020), bright cyan (#00FFFF), and yellow (#FFFF00) accent colors.

```lua
vim.cmd.colorscheme("turbo-plus-classic")
```

#### Classic Variant Configuration

The classic variant supports an optional configuration to use an even deeper original blue background:

**Neovim (Lua):**
```lua
vim.g.turbo_plus_classic_use_original_blue = true
vim.cmd.colorscheme("turbo-plus-classic")
```

**Vim (VimScript):**
```vim
let g:turbo_plus_classic_use_original_blue = 1
colorscheme turbo-plus-classic
```

When enabled, this option uses the deeper blue background (#000033) with corresponding adjustments to all related background colors for a more authentic Turbo C++ IDE experience.

## Install

### Neovim

#### lazy.nvim

```lua
{
  "rivethorn/turbo-plus.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Use turbo-plus for the softer variant
    vim.cmd.colorscheme("turbo-plus")
    
    -- Or use turbo-plus-classic for the authentic experience
    -- vim.cmd.colorscheme("turbo-plus-classic")
    
    -- Optional: use original blue background with classic variant
    -- vim.g.turbo_plus_classic_use_original_blue = true
    -- vim.cmd.colorscheme("turbo-plus-classic")
  end,
}
```

#### Lazyvim

```lua
return {
    {
        "rivethorn/turbo-plus.nvim",
        lazy = false,
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "turbo-plus", -- or "turbo-plus-classic"
        },
    },
}
```

#### packer.nvim

```lua
use "rivethorn/turbo-plus.nvim"
```

Then use `:colorscheme turbo-plus` or `:colorscheme turbo-plus-classic`.

### Vim

#### vim-plug

```vim
Plug 'rivethorn/turbo-plus.nvim'
```

Then add to your `.vimrc`:

```vim
colorscheme turbo-plus
" or
colorscheme turbo-plus-classic
" optional: for deeper original blue background
let g:turbo_plus_classic_use_original_blue = 1
```

#### Manual Installation

Copy the colorscheme files to your Vim configuration directory:

**Linux/macOS:**
```bash
mkdir -p ~/.vim/colors
cp colors/turbo-plus.vim ~/.vim/colors/
cp colors/turbo-plus-classic.vim ~/.vim/colors/
```

**Windows:**
```bash
mkdir %USERPROFILE%\vimfiles\colors
copy colors\turbo-plus.vim %USERPROFILE%\vimfiles\colors\
copy colors\turbo-plus-classic.vim %USERPROFILE%\vimfiles\colors\
```

Then add to your `.vimrc`:

```vim
colorscheme turbo-plus
" or
colorscheme turbo-plus-classic
```

#### Vundle

Add to your `.vimrc`:

```vim
Bundle 'rivethorn/turbo-plus.nvim'
```

Then use `:colorscheme turbo-plus` or `:colorscheme turbo-plus-classic`.

## License

MIT — see `LICENSE`.
