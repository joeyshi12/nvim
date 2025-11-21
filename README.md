# nvim

 Neovim configuration files.

## Installation

```sh
git clone https://github.com/joeyshi12/nvim.git ~/.config/nvim
```

## Adding new plugins

To add a single plugin, create a file in lua/plugins and write a single return statement that includes the Github <user>/<repo> identifier,
set the relevant opts, and set a callback function config that triggers after the plugin is loaded if necessary.

The return statement can contain multiple tables of different plugins to group relevant plugins together in one file.
