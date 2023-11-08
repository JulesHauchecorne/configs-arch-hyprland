return {

    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "theHamsta/nvim-dap-virtual-text",
        "nvim-telescope/telescope-dap.nvim",
    },
    lazy = true,
    config = function()
        require("dapui").setup({
            layouts = { {
                elements = { {
                    id = "scopes",
                    size = 0.25
                }, {
                    id = "breakpoints",
                    size = 0.25
                }, {
                    id = "stacks",
                    size = 0.25
                }, {
                    id = "watches",
                    size = 0.25
                } },
                position = "left",
                size = 30
            }, {
                elements = { {
                    id = "repl",
                    size = 0
                }, {
                    id = "console",
                    size = 1
                } },
                position = "bottom",
                size = 15
            } },
        })
        vim.cmd([[ hi default DapUIBreakpointsCurrentLine guifg=NONE gui=NONE ]])
        require("nvim-dap-virtual-text").setup()
        require('telescope').load_extension('dap')
        vim.fn.sign_define('DapStopped', { text = '🔵', texthl = 'red', linehl = '', numhl = '' })
        vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = 'red', linehl = '', numhl = '' })
    end
}
