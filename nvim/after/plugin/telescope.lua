local builtin = require('telescope.builtin')
-- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    }
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")

-- keymaps
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', 'C-p', builtin.git_files, {})
vim.cmd("nnoremap <leader>rg <cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.cmd("nnoremap <leader>gr <cmd>lua require('telescope.builtin').lsp_references()<cr>")
vim.cmd("nnoremap <leader>gi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>")
vim.keymap.set('n', '<leader>/' , "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", opts)
vim.keymap.set('n',  'gf',  "<cmd>lua require('telescope.builtin').lsp_code_actions( { layout_strategy = 'cursor',  layout_config = { cursor = { width = 0.4, height = 0.2 }} })<CR>", opts)
vim.keymap.set('n', '<leader>;', "<cmd>lua require('telescope.builtin').commands(require('telescope.themes').get_dropdown({}) )<cr>", opts)
vim.keymap.set('n', '<leader>:', "<cmd>lua require('telescope.builtin').command_history(require('telescope.themes').get_dropdown({}) )<cr>", opts)



