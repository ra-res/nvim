local status_ok, telescope = pcall(require, "telescope")

if not status_ok then
  return
end

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
keymap('n', '<leader>gs', "<cmd>lua require('telescope.builtin').git_status()<CR>", opts)
