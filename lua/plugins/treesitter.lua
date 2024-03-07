return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {'lua', 'vimdoc', 'typescript', 'javascript'},

      auto_install = true,

      highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true, 
      }
    }
  end
}
