return {
    
     "rcarriga/nvim-dap-ui",
       dependencies = {
        "mfussenegger/nvim-dap",
        "theHamsta/nvim-dap-virtual-text",
        "nvim-telescope/telescope-dap.nvim"
       },
    lazy = true,
   config = function()
       require("dapui").setup()
       vim.cmd([[ hi default DapUIBreakpointsCurrentLine guifg=NONE gui=NONE ]])
       require("nvim-dap-virtual-text").setup()
       require('telescope').load_extension('dap')
       vim.fn.sign_define('DapStopped', { text = '🔵', texthl = 'red', linehl = '', numhl = '' })
       vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = 'red', linehl = '', numhl = '' })
   end
}
