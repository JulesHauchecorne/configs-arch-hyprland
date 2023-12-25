-- make all keymaps silent by default
local keymap_set = vim.keymap.set
vim.keymap.set = function(mode, lhs, rhs, opts)
    opts = opts or {}
    opts.silent = opts.silent ~= false
    return keymap_set(mode, lhs, rhs, opts)
end

---- esc
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")
--
vim.keymap.set("n", "<leader>pv", ":Oil<CR>")

-- move visual selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep search term in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- rename
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
 
-- run makefile 

vim.keymap.set("n", "<F10>", ":make<CR>", opts )

-- next greatest remap ever : asbjornHaland
vim.keymap.set("v", '<leader>y', [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("x", "<leader>p", [["_dP]])


--
---- basic formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
--
---- windows nav
vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', opts)
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<leader>+', ':vertical resize +5<CR>', opts)
vim.keymap.set('n', '<leader>-', ':vertical resize -5<CR>', opts)
--
---- laziness++
vim.keymap.set('n', '<leader>x', ':wqa<CR>', opts)
--
---- eazy get rid of highlight
vim.keymap.set('n', '//', ':noh<CR>', opt)
--
---- show git blame per line
--vim.keymap.set('n', '<leader>gb',  ":ToggleBlameLine<CR>", opts)
--
------ Markdown preview
vim.keymap.set('n', '<leader>md', ':MarkdownPreview<CR>', opts)
--
------ emmet leader key pour le html completion
vim.cmd("let g:user_emmet_leader_key=',' ")

-- dadbod toggle ui
vim.keymap.set('n', '<leader>D',  ":DBUIToggle<CR>", opts)

-- datatbase
vim.keymap.set('n', '<leader>D', ':DBUI<CR>', opts)

-- Run file or Makefile
vim.cmd("silent autocmd FileType cpp nnoremap <buffer>  <leader>t  :terminal g++ %; ./a.out<CR>")
vim.cmd("silent autocmd FileType c nnoremap <buffer>  <leader>t  :terminal gcc %; ./a.out<CR>")
vim.cmd("silent autocmd FileType python nnoremap <buffer>  <leader>t  :terminal python3 %<CR>")
vim.cmd("silent autocmd FileType java nnoremap <buffer>  <leader>t  :terminal javac %; java %:r<CR>")
-- vim.cmd("silent autocmd FileType cpp nnoremap <buffer>  <leader>m  :!make<CR>")
-- vim.cmd("silent autocmd FileType c nnoremap <buffer>  <leader>m  :!make<CR>")

-- vim test
vim.keymap.set('n', '<leader>T', ':TestFile<CR>', opts)

-- harpoon
vim.keymap.set('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>', opts)
vim.keymap.set('n', '<C-e>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
vim.keymap.set('n', '<C-h>', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
vim.keymap.set('n', '<C-n>', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
vim.keymap.set('n', '<C-t>', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
