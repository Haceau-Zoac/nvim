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

