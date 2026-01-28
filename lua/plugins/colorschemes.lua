return {
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({})
      -- vim.cmd.colorscheme("nord")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "auto", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "frappe",
        },
        transparent_background = false, -- disables setting the background color.
        float = {
          transparent = false, -- enable transparent floating windows
          solid = false, -- use solid styling for floating windows, see |winborder|
        },
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            ok = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        auto_integrations = false,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })

      -- setup must be called before loading
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    config = function()
      -- Lua:
      -- For dark theme (neovim's default)
      vim.o.background = "dark"
      -- For light theme
      -- vim.o.background = "light"

      local c = require("vscode.colors").get_colors()
      require("vscode").setup({
        -- Alternatively set style in setup
        -- style = 'light'

        -- Enable transparent background
        transparent = true,

        -- Enable italic comment
        italic_comments = true,

        -- Enable italic inlay type hints
        italic_inlayhints = true,

        -- Underline `@markup.link.*` variants
        underline_links = true,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,

        -- Apply theme colors to terminal
        terminal_colors = true,

        -- Override colors (see ./lua/vscode/colors.lua)
        color_overrides = {
          -- vscLineNumber = "#FFFFFF",
        },

        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        },
      })
      -- require('vscode').load()

      -- load the theme without affecting devicon colors.
      -- vim.cmd.colorscheme("vscode")
      --
      -- require("lualine").setup({
      --   options = {
      --     -- ...
      --     theme = "vscode",
      --     -- ...
      --   },
      -- })
    end,
  },
  -- Lua

  {
    "drewtempelmeyer/palenight.vim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd("colorscheme palenight")
    end,
  },

  {
    "marko-cerovac/material.nvim",
    config = function()
      --Lua:
      vim.g.material_style = "darker"
      -- vim.cmd("colorscheme material")
    end,
  },

  {
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
    config = function()
      -- vim.cmd("colorscheme vitesse")
    end,
  },

  {
    "khoido2003/monokai-v2.nvim",
    priority = 1000,
    config = function()
      require("monokai-v2").setup()
      -- vim.cmd("colorscheme monokai-pro-spectrum")
    end,
  },

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      -- Default options:
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
      -- vim.cmd("colorscheme gruvbox")
    end,
  },

  {
    "michaeldyrynda/carbon",
    config = function()
      -- vim.cmd("colorscheme carbon")
    end,
  },

  {
    "doums/darcula",
    config = function()
      -- vim.cmd("colorscheme darcula")
    end,
  },
}
