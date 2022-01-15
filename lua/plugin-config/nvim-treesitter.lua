require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "vim", "lua"  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    },
  },
  indent = {
    enable = true,
  },
}

require('nvim-treesitter.install').command_extra_args = {
  curl = { "--proxy", "socks5://172.25.32.1:10808" },
}

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.wo.foldlevel = 99
