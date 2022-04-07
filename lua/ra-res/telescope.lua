local telescope = require("telescope")

telescope.setup {
  defaults = {
    file_ignore_patterns = { "%.git/", "node_modules/", "coverage/", "__pycache__/", "%.o" },
  },
  -- pickers = {
  --   find_files = {
  --     theme = "ivy",
  --   }
  -- }
}

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true}

keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap('n', '<leader>fz', "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", opts)
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
keymap('n', '<leader>fp', "<cmd>lua require('telescope.builtin').find_files({'.FindRootDirectory()'})<CR>", opts)
keymap('n', '<leader>gp', "<cmd>lua require('telescope.builtin').live_grep({'.FindRootDirectory()'})<CR>", opts)

-- nnoremap <expr><leader>fp ':Telescope find_files cwd='.FindRootDirectory().'/<cr>'
-- nnoremap <expr><leader>gp ':Telescope live_grep cwd='.FindRootDirectory().'/<cr>'
