local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>.", "<Plug>(coc-codeaction)", {})
keymap("n", "<leader>qf", "<Plug>(coc-fix-current)", {})
keymap("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
keymap("n", "gt", "<Plug>(coc-type-definition)", {silent = true})
keymap("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keymap("n", "gr", "<Plug>(coc-reference)", {silent = true})
keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
keymap("n", "<leader>t", ":CocCommand prettier.formatFile<CR>", {noremap = true})
keymap("n", "<space>d", ":CocList diagnostics<CR>", {noremap = true, silent = true})
keymap("n", "<leader>te", ":call CocAction('runCommand', 'jest.singleTest')<CR>", {noremap = true, silent = true})
-- keymap("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
-- keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
-- keymap("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
-- keymap("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})

vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300

-- Global coc extensions
vim.g.coc_global_extensions = {'coc-tssserver', 'coc-json', 'coc-snippets', '!node_modules'}
