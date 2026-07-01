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
          dark = "mocha",
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
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = false,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = false,
          transparency = true,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        palette = {
          -- Override the builtin palette per variant
          -- moon = {
          --     base = '#18191a',
          --     overlay = '#363738',
          -- },
        },

        -- NOTE: Highlight groups are extended (merged) by default. Disable this
        -- per group via `inherit = false`
        highlight_groups = {
          CursorLine = { bg = "none" },

          -- Comment = { fg = "foam" },
          -- StatusLine = { fg = "love", bg = "love", blend = 15 },
          -- VertSplit = { fg = "muted", bg = "muted" },
          -- Visual = { fg = "base", bg = "text", inherit = false },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          if highlight.undercurl then
            highlight.undercurl = false
          end
          --
          -- Change palette colour
          if highlight.fg == palette.pine then
            highlight.fg = palette.foam
          end
        end,
      })

      -- vim.cmd("colorscheme rose-pine")
      -- vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end
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
        transparent = false,

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
      require("vitesse").setup {
        comment_italics = true,
        transparent_background = true,
        transparent_float_background = false, -- aka pum(popup menu) background
        reverse_visual = false,
        dim_nc = false,
        cmp_cmdline_disable_search_highlight_group = false, -- disable search highlight group for cmp item
        -- if `transparent_float_background` false, make telescope border color same as float background
        telescope_border_follow_float_background = false,
        -- similar to above, but for lspsaga
        lspsaga_border_follow_float_background = false,
        -- diagnostic virtual text background, like error lens
        diagnostic_virtual_text_background = false,

        -- override the `lua/vitesse/palette.lua`, go to file see fields
        colors = {},
        themes = {},
      }
      require("lualine").setup {
        options = {
          theme = "vitesse",
        }
      }
      require("bufferline").setup {
        options = {
          highlights = require("vitesse.plugins.bufferline"),
        },
      }
      vim.cmd("colorscheme vitesse")
      -- for transparency
      vim.opt.winblend = 0
      vim.opt.pumblend = 0
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    config = function ()
      -- Optional, you don't have to run setup.
      require("transparent").setup({
        -- table: default groups
        groups = {
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
          'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
          'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
          'EndOfBuffer',
        },
        -- table: additional groups that should be cleared
        extra_groups = {},
        -- table: groups you don't want to clear
        exclude_groups = {},
        -- function: code to be executed after highlight groups are cleared
        -- Also the user event "TransparentClear" will be triggered
        on_clear = function() end,
      })

      vim.cmd(":TransparentEnable")
    end
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
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
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

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function ()
      require("onedarkpro").setup({
        colors = {}, -- Override default colors or create your own
        highlights = {}, -- Override default highlight groups or create your own
        styles = { -- For example, to apply bold and italic, use "bold,italic"
          types = "NONE", -- Style that is applied to types
          methods = "NONE", -- Style that is applied to methods
          numbers = "NONE", -- Style that is applied to numbers
          strings = "NONE", -- Style that is applied to strings
          comments = "NONE", -- Style that is applied to comments
          keywords = "NONE", -- Style that is applied to keywords
          constants = "NONE", -- Style that is applied to constants
          functions = "NONE", -- Style that is applied to functions
          operators = "NONE", -- Style that is applied to operators
          variables = "NONE", -- Style that is applied to variables
          parameters = "NONE", -- Style that is applied to parameters
          conditionals = "NONE", -- Style that is applied to conditionals
          virtual_text = "NONE", -- Style that is applied to virtual text
        },
        filetypes = { -- Override which filetype highlight groups are loaded
          c = true,
          comment = true,
          go = true,
          html = true,
          java = true,
          javascript = true,
          json = true,
          latex = true,
          lua = true,
          markdown = true,
          php = true,
          python = true,
          ruby = true,
          rust = true,
          scss = true,
          toml = true,
          typescript = true,
          typescriptreact = true,
          vue = true,
          xml = true,
          yaml = true,
        },
        plugins = { -- Override which plugin highlight groups are loaded
          aerial = true,
          barbar = true,
          blink_cmp = true,
          blink_indent = true,
          blink_pairs = true,
          codecompanion = true,
          copilot = true,
          csvview = true,
          dashboard = true,
          flash_nvim = true,
          gitgraph_nvim = true,
          gitsigns = true,
          hop = true,
          indentline = true,
          leap = true,
          lsp_saga = true,
          lsp_semantic_tokens = true,
          marks = true,
          mason = true,
          mini_diff = true,
          mini_icons = true,
          mini_indentscope = true,
          mini_test = true,
          neotest = true,
          neo_tree = true,
          nvim_cmp = true,
          nvim_bqf = true,
          nvim_dap = true,
          nvim_dap_ui = true,
          nvim_hlslens = true,
          nvim_lsp = true,
          nvim_navic = true,
          nvim_notify = true,
          nvim_tree = true,
          nvim_ts_rainbow = true,
          nvim_ts_rainbow2 = true,
          op_nvim = true,
          packer = true,
          persisted = true,
          polygot = true,
          rainbow_delimiters = true,
          render_markdown = true,
          snacks = true,
          startify = true,
          telescope = true,
          toggleterm = true,
          treesitter = true,
          trouble = true,
          vim_ultest = true,
          which_key = true,
          vim_dadbod_ui = true,
        },

        options = {
          cursorline = false, -- Use cursorline highlighting?
          transparency = false, -- Use a transparent background?
          terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
          lualine_transparency = false, -- Center bar transparency?
          highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
        }
      })
      -- vim.cmd("colorscheme onedark_vivid")
    end
  },

  -- Using Lazy
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Lua
      require('onedark').setup  {
        -- Main options --
        style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = true,  -- Show/hide background
        term_colors = true, -- Change terminal color as per the selected theme style
        ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

        -- toggle theme style ---
        toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
        code_style = {
          comments = 'italic',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none'
        },

        -- Lualine options --
        lualine = {
          transparent = false, -- lualine center bar transparency
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
          darker = true, -- darker colors for diagnostic
          undercurl = true,   -- use undercurl instead of underline for diagnostics
          background = true,    -- use background color for virtual text
        },
      }
    end
  },

  {
    "cpea2506/one_monokai.nvim",
    config = function ()
      -- require("one_monokai").setup({
      --   transparent = false,
      --   colors = {},
      --   highlights = function(colors)
      --     return {}
      --   end,
      --   italics = true,
      --   cache = {
      --     path = vim.fs.joinpath(vim.fn.stdpath "cache", "one_monokai"),
      --   }
      -- })
      -- vim.cmd.colorscheme "one_monokai"      
    end
  },

  {
    "rebelot/kanagawa.nvim",
    config = function ()
      -- Default options:
      require('kanagawa').setup({
          compile = false,             -- enable compiling the colorscheme
          undercurl = true,            -- enable undercurls
          commentStyle = { italic = true },
          functionStyle = {},
          keywordStyle = { italic = true},
          statementStyle = { bold = true },
          typeStyle = {},
          transparent = true,         -- do not set background color
          dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
          terminalColors = true,       -- define vim.g.terminal_color_{0,17}
          colors = {                   -- add/modify theme and palette colors
              palette = {},
              theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
          },
          overrides = function(colors) -- add/modify highlights
              return {}
          end,
          theme = "wave",              -- Load "wave" theme
          background = {               -- map the value of 'background' option to a theme
              dark = "wave",           -- try "dragon" !
              light = "lotus"
          },
      })

      -- setup must be called before loading
      --vim.cmd("colorscheme kanagawa")
    end
  }
}
