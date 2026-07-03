# Turbo-Plus.nvim

A modern, softer take on Turbo C++ colorscheme for Neovim.

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

## Install

### lazy.nvim

```lua
{
  "rivethorn/turbo-plus.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("turbo-plus")
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
            colorscheme = "turbo-plus",
        },
    },
}
```

### packer.nvim

```lua
use "rivethorn/turbo-plus.nvim"
```

Then `:colorscheme turbo-plus`.

## License

MIT — see `LICENSE`.
