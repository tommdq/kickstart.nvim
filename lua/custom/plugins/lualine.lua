return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
        theme = 'tokyonight',
      },
      tabline = {
        lualine_b = {
          {
            'tabs',
            show_modified_status = true,
            mode = 1,
          },
        },
      },
      sections = {
        lualine_x = {
          {
            require('noice').api.statusline.mode.get,
            cond = require('noice').api.statusline.mode.has,
            color = { fg = '#ff9e64' },
          },
          {
            require('noice').api.status.command.get,
            cond = require('noice').api.status.command.has,
            color = { fg = '#ff9e64' },
          },
          {
            'encoding',
            'fileformat',
          },
        },
        lualine_c = {
          { 'filename', path = 4 },
        },
      },
    }
  end,
}
