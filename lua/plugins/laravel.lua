return {

  -- ================================
  -- Laravel.nvim
  -- ================================
  {
    "adalessa/laravel.nvim",
    cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
    event = "VeryLazy",
    dependencies = {
      "tpope/vim-dotenv",
      "MunifTanjim/nui.nvim",
      "kevinhwang91/promise-async",
      "nvim-neotest/nvim-nio",
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      features = {
        pickers = {
          enable = true,
          provider = "telescope", -- LazyVim ships telescope by default
        },
      },
    },
    keys = {
      { "<leader>La", "<cmd>Laravel artisan<cr>", desc = "Laravel Artisan" },
      { "<leader>Lr", "<cmd>Laravel routes<cr>", desc = "Laravel Routes" },
      { "<leader>Lc", "<cmd>Composer<cr>", desc = "Composer" },
      { "<leader>Ln", "<cmd>Npm<cr>", desc = "Npm" },
      { "<leader>Ly", "<cmd>Yarn<cr>", desc = "Yarn" },
    },
    config = function ()
      
    end
  },

  -- ================================
  -- Laravel IDE Helper
  -- ================================
  {
    "Bleksak/laravel-ide-helper.nvim",
    keys = {
      {
        "<leader>Lim",
        function()
          require("laravel-ide-helper").generate_models(vim.fn.expand("%"))
        end,
        desc = "IDE Helper: Current Model",
      },
      {
        "<leader>LiM",
        function()
          require("laravel-ide-helper").generate_models()
        end,
        desc = "IDE Helper: All Models",
      },
    },
  },

  -- ================================
  -- Blade Navigation
  -- ================================
  {
    "ricardoramirezr/blade-nav.nvim",
    ft = { "blade", "php" },
  },

  -- ================================
  -- Ensure Pint Installed
  -- ================================
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "pint")
    end,
  },

  -- ================================
  -- PHP Formatting (Pint)
  -- ================================
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.php = { "pint" }
    end,
  },
}
