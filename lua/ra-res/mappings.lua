local keymap = vim.api.nvim_set_keymap
opts = { noremap = true, silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap('i', 'jj', '<Esc>', opts)

-- Split window
keymap('n', 'vs', ':vs<CR>', opts)
keymap('n', 'sp', ':sp<CR>', opts)

-- Navigate between window splits
keymap('n', '<C-L>', '<C-W><C-L>', opts)
keymap('n', '<C-H>', '<C-W><C-H>', opts)
keymap('n', '<C-K>', '<C-W><C-K>', opts)
keymap('n', '<C-J>', '<C-W><C-J>', opts)

keymap('n', '<C-S>', ':%s/', opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<Tab>", "<cmd>bnext<CR>", opts)
keymap("n", "<S-Tab>", "<cmd>bprevious<CR>", opts)

-- Navigate tabs
keymap('n', 'tn', ':tabnew<CR>', opts)
keymap('n', 'tk', ':tabnext<CR>', opts)
keymap('n', 'tj', ':tabprev<CR>', opts)
keymap('n', 'to', ':tabo<CR>', opts)
keymap('n', '<C-t>', '<cmd>NvimTreeToggle<CR>', opts)
keymap('n', '<C-f>', '<cmd>NvimTreeFindFileToggle<CR>', opts)

-- Telescope
keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap('n', '<leader>fz', "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", opts)
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
keymap('n', '<leader>gs', "<cmd>lua require('telescope.builtin').git_status()<CR>", opts)
keymap('n', '<leader>b', "<cmd>lua require('telescope.builtin').git_branches()<CR>", opts)
keymap('n', '<leader>c', "<cmd>lua require('telescope.builtin').git_commits()<CR>", opts)
