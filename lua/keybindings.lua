-- nvimTree
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)
map('n', "sv", ":vsp<CR>", opt)
map('n', "sh", ":sp<CR>", opt)
map('n', "sc", "<C-w>c", opt)
map('n', "so", "<C-w>o", opt)
map('n', '<A-h>', '<C-w>h', opt)
map('n', '<A-j>', '<C-w>j', opt)
map('n', '<A-k>', '<C-w>k', opt)
map('n', '<A-l>', '<C-w>l', opt)

local pluginKeys = {}

pluginKeys.cmp = function(cmp)
  return {
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

return pluginKeys
