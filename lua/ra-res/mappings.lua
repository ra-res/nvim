local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

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

-- Navigate windows
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
keymap("n", "<C-x>", "<cmd>Bdelete!<CR>", opts)

-- Navigate tabs
keymap('n', 'tn', ':tabnew<CR>', opts)
keymap('n', 'tx', ':tabclose<CR>', opts)
keymap('n', 'to', ':tabo<CR>', opts)
keymap('n', 'tk', ':tabnext<CR>', opts)
keymap('n', 'tj', ':tabprev<CR>', opts)

-- Nvim Tree
-- keymap('n', '<C-t>', '<cmd>NvimTreeToggle<CR>', opts)
keymap('n', '<C-f>', '<cmd>NvimTreeFindFileToggle<CR>', opts)

keymap('n', '=', "<cmd>JABSOpen<CR>", { noremap = true, silent = true, nowait = true })

-- Telescope
keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap('n', '<leader>fz', "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", opts)
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
keymap('n', '<leader>b', "<cmd>lua require('telescope.builtin').git_branches()<CR>", opts)
keymap('n', '<leader>c', "<cmd>lua require('telescope.builtin').git_commits()<CR>", opts)
keymap('n', '<leader>fr', "<cmd>Telescope resume<CR>", opts)

-- Touble
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Git
keymap("n", "<space>gg", '<cmd>Git<CR>', opts)
keymap("n", "<space>gd", '<cmd>Gdiff<CR>', opts)
keymap("n", "<space>gc", '<cmd>Git commit<CR>', opts)
keymap("n", "<space>gb", '<cmd>Git blame<CR>', opts)
keymap("n", "<space>gp", '<cmd>Git push<CR>', opts)

-- Test
keymap("n", "<leader>te", "<cmd>TestNearest<CR>", opts)
keymap("n", "<leader>tf", "<cmd>TestFile<CR>", opts)
