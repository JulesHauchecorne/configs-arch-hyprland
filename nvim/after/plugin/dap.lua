---@diagnostic disable: undefined-global
-- set up config file for java with dap debug
-- for icons install codicon with this command  ? necessry ? maybe
--  sudo npm install -g @vscode/codicons


require("dapui").setup()
vim.cmd([[ hi default DapUIBreakpointsCurrentLine guifg=NONE gui=NONE ]])
require("nvim-dap-virtual-text").setup()
require('telescope').load_extension('dap')

vim.fn.sign_define('DapStopped', {text='🔵', texthl='red', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='red', linehl='', numhl=''})
-- additional dap bindings for java at the end of jdtls config

vim.keymap.set('n', '<leader>dl', ':DapLoadLaunchJSON<CR>', opts )
vim.cmd("nnoremap <leader>dd <Cmd>lua require'dapui'.toggle()<CR>")
vim.cmd("nnoremap <leader>dc <Cmd>lua require'dap'.continue()<CR>")
vim.cmd("nnoremap <leader>dr <Cmd>lua require'dap'.restartFrame()<CR>")
vim.cmd("nnoremap <leader>dq <Cmd>lua require'dap'.terminate()<CR>")
vim.cmd("nnoremap <leader>db <Cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.cmd("nnoremap <leader>dB <Cmd>lua require'dap'.clear_breakpoints()<CR>")
vim.cmd("nnoremap <leader>ds <Cmd>lua require'dap'.step_over()<CR>")
vim.cmd("nnoremap <leader>dS <Cmd>lua require'dap'.step_into()<CR>")
vim.cmd("nnoremap <leader>dk <Cmd>lua require'dapui'.eval()<CR>")
