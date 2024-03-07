return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },

      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.o.showmode = false
            vim.o.ruler = false
            vim.o.laststatus = 0
            vim.o.showcmd = false
          end
        },
        {
          event = "neo_tree_buffer_leave",
          handler = function()
            vim.o.showmode = true
            vim.o.ruler = true
            vim.o.laststatus = 2
            vim.o.showcmd = true
          end
        },
      },

      source_selector = {
        statusline = false
      }
    }

    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', { desc = '[N]eotree [l]eft' })
  end
}
