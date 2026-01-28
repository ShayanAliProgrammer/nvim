return {

  -- ================================
  -- Treesitter: PHP + PHPDoc
  -- ================================
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "php")
      table.insert(opts.ensure_installed, "phpdoc")
    end,
  },

  -- ================================
  -- LSP: PHPActor
  -- ================================
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.phpactor = {}
    end,
  },

  -- ================================
  -- Ensure External Tools Installed
  -- ================================
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      table.insert(opts.ensure_installed, "phpactor")
      table.insert(opts.ensure_installed, "php-debug-adapter")
      table.insert(opts.ensure_installed, "php-cs-fixer")
    end,
  },

  -- ================================
  -- Formatter: php-cs-fixer
  -- ================================
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.php = { "php_cs_fixer" }
    end,
  },

  -- ================================
  -- Blink.cmp Compatibility
  -- ================================
  {
    "Saghen/blink.cmp",
    optional = true,
    dependencies = {
      {
        "windwp/nvim-ts-autotag",
        optional = true,
        opts = {
          per_filetype = {
            php = { enable_close = false },
          },
        },
      },
    },
  },
}
