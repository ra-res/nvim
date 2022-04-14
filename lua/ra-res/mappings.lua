local keymap = vim.api.nvim_set_keymap
opts = { noremap = true } 
keymap('i', 'jj', '<Esc>', opts)
keymap('n', 'vs', ':vs<CR>', opts)
keymap('n', 'sp', ':sp<CR>', opts)
keymap('n', '<C-L>', '<C-W><C-L>', opts)
keymap('n', '<C-H>', '<C-W><C-H>', opts)
keymap('n', '<C-K>', '<C-W><C-K>', opts)
keymap('n', '<C-J>', '<C-W><C-J>', opts)
keymap('n', 'tn', ':tabnew<CR>', opts)
keymap('n', 'tk', ':tabnext<CR>', opts)
keymap('n', 'tj', ':tabprev<CR>', opts)
keymap('n', 'to', ':tabo<CR>', opts)
keymap('n', '<C-S>', ':%s/', opts)
