local overrides = require "user.configs.overrides"

local plugins = {
  "simrat39/rust-tools.nvim",
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
  -- require("user.configs.statusline").plugins,
}

return plugins
