vim.filetype.add { extension = { templ = "templ" } }
vim.opt.background = "light"

local M = {
  colorscheme = "catppuccin",
}

M.options = {
  opt = {
    cmdheight = 1,
  },
}

-- local StatusLine = require "user.configs.statusline"
--
-- M.icons = StatusLine.icons
-- M.heirline = StatusLine.heirline

M.lsp = require "user.configs.lsp"

M.plugins = require "user.plugins"

return M
