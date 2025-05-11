-- return {
--   "bluz71/vim-nightfly-colors",
--   name = "nightfly",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.g.nightflyItalics = false
--     vim.g.nightflyTransparent = true
--     vim.g.nightflyNormalFloat = true
--   end,
-- }

-- return {
--   "olimorris/onedarkpro.nvim",
--   lazy = false,
--   priority = 1000, -- Ensure it loads first
--   config = function()
--     require("onedarkpro").setup {
--       highlights = {
--         Comment = { italic = false },
--       },
--       options = {
--         cursorline = false, -- Use cursorline highlighting?
--         transparency = true, -- Use a transparent background?
--         terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
--         lualine_transparency = true, -- Center bar transparency?
--         highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
--       },
--     }
--   end,
-- }

-- return {
--   "rebelot/kanagawa.nvim",
--   name = "kanagawa",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Default options:
--     require("kanagawa").setup {
--       compile = false, -- enable compiling the colorscheme
--       undercurl = true, -- enable undercurls
--       commentStyle = { italic = false },
--       functionStyle = {},
--       keywordStyle = { italic = true },
--       statementStyle = { bold = true },
--       typeStyle = {},
--       transparent = true, -- do not set background color
--       terminalColors = true, -- define vim.g.terminal_color_{0,17}
--       theme = "wave", -- Load "wave" theme when 'background' option is not set
--       overrides = function(colors)
--         local theme = colors.theme
--         return {
--           NormalFloat = { bg = "none" },
--           FloatBorder = { bg = "none" },
--           FloatTitle = { bg = "none" },
--
--           -- Save an hlgroup with dark background and dimmed foreground
--           -- so that you can use it where your still want darker windows.
--           -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
--           NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
--
--           -- Popular plugins that open floats will link to NormalFloat by default;
--           -- set their background accordingly if you wish to keep them dark and borderless
--           LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
--           MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
--           Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
--           PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
--           PmenuSbar = { bg = theme.ui.bg_m1 },
--           PmenuThumb = { bg = theme.ui.bg_p2 },
--         }
--       end,
--     }
--
--     -- setup must be called before loading
--     vim.cmd "colorscheme kanagawa"
--   end,
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("tokyonight").setup {
--       -- use the night style
--       style = "night",
--       transparent = false,
--       -- disable italic for functions
--       styles = {
--         comments = { italic = false },
--         keywords = { italic = false },
--         -- sidebars = "transparent", -- style for sidebars, see below
--         -- floats = "transparent",
--       },
--       lualine_bold = true,
--       dim_inactive = false,
--       cache = true,
--       -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--       on_colors = function(colors)
--         colors.hint = colors.orange
--         colors.error = "#ff0000"
--       end,
--     }
--   end,
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup {
--       flavour = "auto", -- latte, frappe, macchiato, mocha
--       background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--       },
--       transparent_background = true, -- disables setting the background color.
--       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--       term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--       },
--       no_italic = true, -- Force no italic
--       no_bold = false, -- Force  bold
--       no_underline = false, -- Force no underline
--       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = {}, -- Change the style of comments
--         conditionals = {},
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       default_integrations = true,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         notify = false,
--         mini = {
--           enabled = true,
--           indentscope_color = "",
--         },
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--       },
--     }
--
--     -- setup must be called before loading
--     vim.cmd.colorscheme "catppuccin"
--   end,
-- }

-- return {
--   "oxfist/night-owl.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     -- load the colorscheme here
--     require("night-owl").setup {
--       -- These are the default settings
--       bold = true,
--       italics = true,
--       underline = true,
--       undercurl = true,
--       transparent_background = false,
--     }
--     vim.cmd.colorscheme "night-owl"
--   end,
-- }

-- return {
--   "sainnhe/everforest",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.everforest_enable_italic = false
--     vim.cmd.colorscheme "everforest"
--   end,
-- }

-- lua/plugins/rose-pine.lua
-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     require("rose-pine").setup {
--       variant = "auto", -- auto, main, moon, or dawn
--       dark_variant = "main", -- main, moon, or dawn
--       dim_inactive_windows = false,
--       extend_background_behind_borders = true,
--
--       enable = {
--         terminal = true,
--         legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
--         migrations = true, -- Handle deprecated options automatically
--       },
--
--       styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--       },
--
--       groups = {
--         border = "muted",
--         link = "iris",
--         panel = "surface",
--
--         error = "love",
--         hint = "iris",
--         info = "foam",
--         note = "pine",
--         todo = "rose",
--         warn = "gold",
--
--         git_add = "foam",
--         git_change = "rose",
--         git_delete = "love",
--         git_dirty = "rose",
--         git_ignore = "muted",
--         git_merge = "iris",
--         git_rename = "pine",
--         git_stage = "iris",
--         git_text = "rose",
--         git_untracked = "subtle",
--
--         h1 = "iris",
--         h2 = "foam",
--         h3 = "rose",
--         h4 = "gold",
--         h5 = "pine",
--         h6 = "foam",
--       },
--
--       palette = {
--         -- Override the builtin palette per variant
--         -- moon = {
--         --     base = '#18191a',
--         --     overlay = '#363738',
--         -- },
--       },
--
--       -- NOTE: Highlight groups are extended (merged) by default. Disable this
--       -- per group via `inherit = false`
--       highlight_groups = {
--         -- Comment = { fg = "foam" },
--         -- StatusLine = { fg = "love", bg = "love", blend = 15 },
--         VertSplit = { fg = "muted", bg = "muted" },
--         -- Visual = { fg = "base", bg = "text", inherit = false },
--       },
--
--       before_highlight = function(group, highlight, palette)
--         -- Disable all undercurls
--         -- if highlight.undercurl then
--         --     highlight.undercurl = false
--         -- end
--         --
--         -- Change palette colour
--         -- if highlight.fg == palette.pine then
--         --     highlight.fg = palette.foam
--         -- end
--       end,
--     }
--
--     vim.cmd "colorscheme rose-pine"
--     -- vim.cmd("colorscheme rose-pine-main")
--     -- vim.cmd("colorscheme rose-pine-moon")
--     -- vim.cmd("colorscheme rose-pine-dawn")
--   end,
-- }

-- return {
--   "sainnhe/sonokai",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.sonokai_enable_italic = false
--     vim.g.sonokai_cursor = 'red'
--     vim.g.sonokai_transparent_background = 'red'
--     vim.cmd.colorscheme "sonokai"
--   end,
-- }
--
return {
  "maxmx03/solarized.nvim",
  lazy = false,
  priority = 1000,
  ---@type solarized.config
  opts = {},
  config = function(_, opts)
    require("solarized").setup {
      transparent = {
        enabled = true, -- Master switch to enable transparency
        pmenu = true, -- Popup menu (e.g., autocomplete suggestions)
        normal = true, -- Main editor window background
        normalfloat = true, -- Floating windows
        neotree = true, -- Neo-tree file explorer
        nvimtree = true, -- Nvim-tree file explorer
        whichkey = true, -- Which-key popup
        telescope = true, -- Telescope fuzzy finder
        lazy = true, -- Lazy plugin manager UI
        mason = true, -- Mason manage external tooling
      },
    }
    vim.o.termguicolors = true
    vim.o.background = "dark"
    require("solarized").setup(opts)
    vim.cmd.colorscheme "solarized"
  end,
}
