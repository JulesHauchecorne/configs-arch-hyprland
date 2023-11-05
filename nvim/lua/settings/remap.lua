---- esc 
vim.keymap.set( "i", "jj", "<Esc>" )
vim.keymap.set( "i", "kk", "<Esc>" )
--

-- move visual selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep search term in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- rename
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set("v", '<leader>y', [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
--
---- basic formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
--
---- windows nav
vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', opts )
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', opts )
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', opts )
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', opts )
vim.keymap.set('n', '<leader>+' , ':vertical resize +5<CR>', opts)
vim.keymap.set('n', '<leader>-' , ':vertical resize -5<CR>', opts)
--
---- laziness++
vim.keymap.set('n', '<leader>x', ':wqa<CR>', opts)
--
---- eazy get rid of highlight
vim.keymap.set('n', '//', ':noh<CR>', opt)
--
---- show git blame per line
vim.keymap.set('n', '<leader>gb',  ":ToggleBlameLine<CR>", opts)
--
------ Markdown preview
vim.keymap.set('n' , '<leader>md' , ':MarkdownPreview<CR>' , opts)
--
------ emmet leader key pour le html completion
vim.cmd("let g:user_emmet_leader_key=',' ")
--
---- rest api
----vim.keymap.set('n', '<leader>R', '<Plug>RestNvim<CR>', opts)

-- vim.api.nvim_command('autocmd CursorHold * lua vim.diagnostic.open_float()')

-- vim test
vim.keymap.set( 'n' , '<leader>T',  ':TestFile<CR>', opts)
