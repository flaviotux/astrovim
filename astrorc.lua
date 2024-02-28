local M = {
  options = {
    opt = { cmdheight = 1 },
  },

  colorscheme = "catppuccin",
  plugins = require "user.plugins",
  lsp = require "user.configs.lsp",
}

return M
