--vim.cmd("let g:ultest_deprecation_notice = 0")
-- for faster diagnostic on hover
vim.o.updatetime = 50
vim.opt.nu = true
vim.opt.hidden = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "auto"
vim.opt.errorbells = false
--vim.cmd('colorscheme  gruvbox')
--vim.cmd('colorscheme  rose-pine')
vim.cmd('hi statusline guibg=NONE gui=NONE')
vim.cmd('hi statusline ctermbg=NONE cterm=NONE')
vim.cmd('hi Pmenu guibg=NONE gui=NONE')
vim.cmd('hi normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight clear NormalFloat')
vim.cmd('highlight clear LineNr')
vim.cmd('highlight SignColumn guibg=NONE ')
vim.api.nvim_set_hl(0, "DiagnosticError", {  bg="none" })
vim.api.nvim_set_hl(0, "DiagnosticSignError", {  bg="none" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", {   bg="none" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {   bg="none" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {   bg="none" })
vim.api.nvim_set_hl(0,"TelescopeNormal",{bg="none"})
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.opt.termguicolors = true

-- noice errors

