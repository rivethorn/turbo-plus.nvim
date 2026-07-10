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
A faithful recreation of the original Turbo C++ application's colors with enhanced syntax highlighting. Features the authentic deep blue background (#000020), bright cyan (#00FFFF), and yellow (#FFFF00) keywords that defined the classic IDE, now optimized for modern Neovim with improved treesitter support.

```lua
vim.cmd.colorscheme("turbo-plus-classic")
```

## Install

### lazy.nvim

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
  end,
}
```

### Lazyvim

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

### packer.nvim

```lua
use "rivethorn/turbo-plus.nvim"
```

Then use `:colorscheme turbo-plus` or `:colorscheme turbo-plus-classic`.

## License

MIT — see `LICENSE`.
