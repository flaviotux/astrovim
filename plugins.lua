local overrides = require "user.configs.overrides"

local plugins = {
  "simrat39/rust-tools.nvim",
  {
    "https://github.com/apple/pkl-neovim",
    lazy = true,
    event = "BufReadPre *.pkl",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    build = function() vim.cmd "TSInstall! pkl" end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts) require("dap-go").setup(opts) end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts) require("dap-go").setup(opts) end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    event = { "VeryLazy" },
    opts = overrides.conform,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = overrides.catppuccin,
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = overrides.telescope,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = overrides.dap,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = overrides.lsp,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = overrides.signs,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      handlers = {
        eslint = function() require("null-ls").register(require("null-ls").builtins.formatting.eslint) end,
      },
    },
  },
  -- require("user.configs.statusline").plugins,
}

return plugins
