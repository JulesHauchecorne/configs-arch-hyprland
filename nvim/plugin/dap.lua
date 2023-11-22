vim.keymap.set('n', '<leader>dl', ':DapLoadLaunchJSON<CR>', opts )

--  REALLY A PAIN TO MAKE THIS WORK , DO NOT REMOVE LINE BELOW, copy modified version according to needs
 -- custom command to load custom config args
vim.cmd("nnoremap <leader>dL <Cmd>lua require('jdtls.dap').setup_dap_main_class_configs({ config_overrides = { vmArgs = '-Dspring.config.location=\"/home/jules/data.properties\"'} })<CR>")

vim.cmd("nnoremap <leader>dd <Cmd>lua require'dapui'.toggle()<CR>")
vim.keymap.set('n', '<leader>dt', ':DapToggleRepl<CR>', opts )
vim.cmd("nnoremap <leader>dc <Cmd>lua require'dap'.continue()<CR>")
vim.cmd("nnoremap <leader>dr <Cmd>lua require'dap'.restartFrame()<CR>")
vim.cmd("nnoremap <leader>dq <Cmd>lua require'dap'.terminate()<CR>")
vim.cmd("nnoremap <leader>db <Cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.cmd("nnoremap <leader>dB <Cmd>lua require'dap'.clear_breakpoints()<CR>")
vim.cmd("nnoremap <leader>ds <Cmd>lua require'dap'.step_over()<CR>")
vim.cmd("nnoremap <leader>dS <Cmd>lua require'dap'.step_into()<CR>")
vim.cmd("nnoremap <leader>dk <Cmd>lua require'dapui'.eval()<CR>")
vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = 'red', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '🔵', texthl = 'red', linehl = '', numhl = '' })
