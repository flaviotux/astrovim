local M = {}

M.treesitter = {
  ensure_installed = {
    -- defaults
    "vim",
    "lua",

    -- web dev
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "graphql",
    "vue",
    "svelte",

    -- low level
    "rust",
    "c",
    "zig",
    "go",
    "gomod",
    "gowork",
    "gosum",
    "templ",
  },
}

M.lsp = {
  ensure_installed = {
    -- lua stuff
    "lua_ls",

    -- web stuff
    "tailwindcss",
    "graphql",
    "tsserver",
    "eslint",
    "html",
    "htmx",

    -- go stuff
    "gopls",
    "templ",

    -- rust stuff
    "rust_analyzer",
  },
}

M.mason = {
  ensure_installed = {
    -- web stuff
    "js-debug-adapter",
    "prettier",
    "eslint_d",
    "delve",

    -- go stuff
    "goimports-reviser",
    "gofumpt",
    "golines",
  },
}

M.catppuccin = {
  flavor = "mocha",
  background = {
    light = "latte",
    dark = "mocha",
  },
  -- transparent_background = true,
  term_colors = true,
}

-- override the options table that is used in the `require("cmp").setup()` call
M.cmp = function(_, opts)
  -- opts parameter is the default options table
  -- the function is lazy loaded so cmp is able to be required
  local cmp = require "cmp"
  -- add creates as sources part of the table
  table.insert(cmp.config.sources(), { name = "creates" })
  -- return the new table to be used
  return opts
end

M.dap = {
  ensure_installed = { "delve", "js" },
}

return M
