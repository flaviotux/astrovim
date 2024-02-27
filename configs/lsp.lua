local lsp = {}

lsp.formatting = {
  format_on_save = true,
}

lsp.servers = require("user.configs.overrides").lsp.ensure_installed

lsp.setup_handlers = {
  rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
}

lsp.config = {
  htmx = {
    filetypes = { "html", "templ" },
  },
  html = {
    filetypes = { "html", "templ" },
  },
  gopls = {
    -- filetypes = { "go", "gomod", "gowork", "gotmpl" },
    settings = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
  tailwindcss = {
    filetypes = { "templ", "astro", "javascript", "typescript", "react" },
    init_options = { userLanguages = { templ = "html" } },
  },
  rust_analyzer = {
    filetypes = { "rust" },
    settings = {
      ["rust-analyser"] = {
        cargo = {
          allFeatures = true,
        },
        procMacro = {
          ignored = {
            ["napi-derive"] = { "napi" },
          },
        },
      },
    },
  },
}

return lsp
