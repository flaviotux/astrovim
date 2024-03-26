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
    -- lua stuff
    "stylua",

    -- web stuff
    "js-debug-adapter",
    "prettier",
    "eslint",
    "delve",

    -- go stuff
    "goimports-reviser",
    "gofumpt",
    "golines",
    "templ",
  },
}

---@type CatppuccinOptions
M.catppuccin = {
  flavor = "mocha",
  background = {
    light = "latte",
    dark = "mocha",
  },
  transparent_background = true,
  term_colors = true,
  integrations = {
    alpha = true,
    aerial = true,
    cmp = true,
    dap = true,
    dap_ui = true,
    gitsigns = true,
    mason = true,
    neotree = true,
    notify = true,
    nvimtree = false,
    semantic_tokens = true,
    symbols_outline = true,
    telescope = true,
    treesitter = true,
    ts_rainbow = false,
    which_key = true,
  },
}

M.telescope = {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
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

M.signs = {
  current_line_blame = true,
  signs = {
    add = { text = "│" },
    change = { text = "│" },
    delete = { text = "󰍵" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "│" },
  },
}

M.conform = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    css = { "eslint_d" },
    html = { "prettier" },

    go = { "gofumpt", "goimports-reviser", "golines" },
    templ = { "templ" },

    rust = { "rust-analyzer" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return M
