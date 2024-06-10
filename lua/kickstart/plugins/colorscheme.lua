return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.

  -- 'folke/tokyonight.nvim',
  -- 'ellisonleao/gruvbox.nvim',
  -- 'EdenEast/nightfox.nvim',
  --
  -- priority = 1000, -- Make sure to load this before all the other start plugins.
  -- init = function()
  --   vim.cmd.colorscheme 'nightfox'
  --   -- You can configure highlights by doing something like:
  --   vim.cmd.hi 'Comment gui=none'
  -- end,

  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'auto', -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.99, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { 'italic' }, -- Change the style of comments
        conditionals = { 'italic' },
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
      color_overrides = {},
      --   return {
      --     WinSeparator = { fg = colors.blue },
      --   }
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        noice = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
