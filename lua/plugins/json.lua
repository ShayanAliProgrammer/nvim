return {

  -- ================================
  -- SchemaStore
  -- ================================
  {
    "b0o/schemastore.nvim",
    lazy = true,
  },

  -- ================================
  -- JSON LSP (jsonls)
  -- ================================
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      opts.servers.jsonls = {
        settings = {
          json = {
            validate = { enable = true },
            schemas = require("schemastore").json.schemas(),
          },
        },
      }
    end,
  },

  -- ================================
  -- Treesitter JSON
  -- ================================
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "json")
    end,
  },

  -- ================================
  -- Ensure JSON LSP Installed
  -- ================================
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "json-lsp")
    end,
  },
}
