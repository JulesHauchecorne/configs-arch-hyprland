-- keymaps
 vim.cmd("nnoremap <leader><leader> <cmd>lua require('telescope.builtin').find_files()<cr>")
 vim.cmd("nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>")
 vim.cmd("nnoremap <leader>rg <cmd>lua require('telescope.builtin').live_grep()<cr>")
 vim.cmd("nnoremap <leader>gr <cmd>lua require('telescope.builtin').lsp_references()<cr>")
 vim.cmd("nnoremap <leader>gi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>")
 vim.keymap.set('n', '<leader>/' , "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", opts)
 vim.keymap.set('n',  'gf',  "<cmd> lua require('telescope.builtin').lsp_code_actions( { layout_strategy = 'cursor',  layout_config = { cursor = { width = 0.4, height = 0.2 }} })<CR>", opts)
 vim.keymap.set('n', '<leader>:', "<cmd>lua require('telescope.builtin').commands(require('telescope.themes').get_dropdown({}) )<cr>", opts)
 vim.keymap.set('n', '<leader>;', "<cmd>lua require('telescope.builtin').command_history(require('telescope.themes').get_dropdown({}) )<cr>", opts)



