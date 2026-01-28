return {

  -- 1) Blade filetype detection
  {
    "nvim-lua/plenary.nvim",
    init = function()
      vim.filetype.add({
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      })
    end,
  },

  -- 2) Blade Treesitter parser
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "blade")
    end,
  },

  -- 3) Blade LSP
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      if vim.fn.executable("laravel-dev-generators") == 1 then
        opts.servers = opts.servers or {}

        opts.servers.blade = {
          cmd = { "laravel-dev-generators", "lsp" },
          filetypes = { "blade" },
          root_dir = function(fname)
            return require("lspconfig").util.find_git_ancestor(fname)
          end,
        }
      end
    end,
  },

  -- 4) Ensure blade-formatter installed
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "blade-formatter")
    end,
  },

  -- 5) Conform formatting
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.blade = { "blade-formatter" }
    end,
  },
}
