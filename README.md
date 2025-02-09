# An awesome example of Noevim configuration 

> Vim is the best editor in the world, while Neovim is more than the best. It gives users maximum freedom to personalize configurations. I love this process, and I'm very passionate about sharing my result. The purpose of my configuration is to configure the UI as beautifully as possible, and try not to configure overly complex functions (I don't like bulky IDEs), just to simplify my workflow. When I finished doing this and see my final editor, I want to say, that's elegant!
>
> So I want to make all my configuration files open source. Firstly, it will make it easier for me to share this set of configurations on multiple devices. Secondly, it will allow more novices to get started with Neovim quickly.



## Set up

### Requirement

As we are using Neovim, these basic things should be available.

- Neovim (>=0.9, 0.10.4 in my divice)
- Python3 (>=3.6)

You can install these stuff from Homebrew or other package manager.



Since I use some plugins, these following tools are required:

- fd [sharkdp/fd]
- ripgrep [BurntSushi/ripgrep]

If you use MacOS, run:

```shell
$ brew install fd ripgrep
```

If you use Linux or other platform, you can use the packgage manager to install this things.



A nerd font is highly recommended (even required if you mind for UI display). I recommend Jetbrains Mono NF.



### Clone this repo

Run the following instructions in `~/.config/nvim` (default, recommend) or other directory you choose for your settings.

```sh
$ git clone https://github.com/YichenShen0103/neovim_config.git
```



## Project structure

Please check after you install. The whole project in shown as follow:

```
.
├── README.md
├── init.lua
├── lazy-lock.json
└── lua
    ├── plugins
    │   ├── alpha.lua
    │   ├── autopairs.lua
    │   ├── bufferline.lua
    │   ├── catppuccin.lua
    │   ├── code_runner.lua
    │   ├── completions.lua
    │   ├── copilot.lua
    │   ├── git.lua
    │   ├── lsp-config.lua
    │   ├── lualine.lua
    │   ├── neo-tree.lua
    │   ├── none-ls.lua
    │   ├── rainbow.lua
    │   ├── surround.lua
    │   ├── telescope.lua
    │   ├── transparent.lua
    │   ├── treesitter.lua
    │   └── trouble.lua
    └── vim-options.lua
```



## Features



## Keymaps



## TODO

1. Add features description
2. Add keymap description