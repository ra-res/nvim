local keymap = vim.api.nvim_set_keymap
opts = { noremap = true } 

keymap('n', '<C-t>', ':NERDTreeToggle<CR>', opts)
keymap('n', '<C-f>', ':NERDTreeFind<CR>', opts)

vim.g.NERDTreeQuitOnOpen = true