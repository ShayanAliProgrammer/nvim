return {

  -- ================================
  -- Filetype detection
  -- ================================
  {
    "nvim-lua/plenary.nvim",
    init = function()
      vim.filetype.add({
        extension = {
          pcss = "postcss",
          postcss = "postcss",
        },
      })
    end,
  },

  -- ================================
  -- Treesitter
  -- ================================
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "html")
      table.insert(opts.ensure_installed, "css")
      table.insert(opts.ensure_installed, "scss")
      table.insert(opts.ensure_installed, "styled")

      -- Treat less & postcss as scss
      vim.treesitter.language.register("scss", "less")
      vim.treesitter.language.register("scss", "postcss")
    end,
  },

  -- ================================
  -- LSP
  -- ================================
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      opts.servers.html = {
        init_options = { provideFormatter = false },
      }

      opts.servers.cssls = {
        init_options = { provideFormatter = false },
      }

      opts.servers.emmet_ls = {}
    end,
  },

  -- ================================
  -- Ensure LSP servers installed
  -- ================================
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "html-lsp")
      table.insert(opts.ensure_installed, "css-lsp")
      table.insert(opts.ensure_installed, "emmet-ls")
    end,
  },

  -- ================================
  -- Mini Icons (PostCSS)
  -- ================================
  {
    "nvim-mini/mini.icons",
    optional = true,
    opts = {
      filetype = {
        postcss = { glyph = "󰌜", hl = "MiniIconsOrange" },
      },
    },
  },
}
