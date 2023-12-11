return {
    {
        -- Telescope
        "nvim-telescope/telescope.nvim",
        lazy = true,
        tag = "0.1.4",
        ft = { "java", "lua", "c", "cpp", "javascript", "typescript", "go", "python", "html", "css", "haskell", "sql" },
        dependencies = { "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
        },
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    },
    {
        -- Undotree
        "https://github.com/mbbill/undotree",
        lazy = true,
        cmd = 'UndotreeToggle'
    },
    {
        -- vim-fugitive for git
        "tpope/vim-fugitive",
        lazy = true,
        cmd = 'Git'
    },

    -- LSP Support
    "neovim/nvim-lspconfig",

    {
        -- Mason LSP Manager
        "williamboman/mason.nvim",
        build = function()
            pcall(vim.cmd, "MasonUpdate")
        end,
        config = function()
            require('mason').setup()
        end
    },
    -- lsp
    { "williamboman/mason-lspconfig.nvim" },

    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        event = 'InsertEnter',
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "Jezda1337/cmp_bootstrap",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "L3MON4D3/LuaSnip",
            "hrsh7th/cmp-vsnip",
        },
        lazy = true
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        cmd = 'NvimTreeFindFileToggle',
        opts = {
            vim.keymap.set("n", "<leader>ps", vim.cmd.NvimTreeFindFileToggle)
        },
        config = function()
            require("nvim-tree").setup()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end
    },
    -- colorschemes
    {
        --  GRUVBOX
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        dependencies = { "rktjmp/lush.nvim" },
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end
    },
    -- {
    --     --  ROSE-PINE
    --     "rose-pine/neovim",
    --     name = 'rose-pine',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.cmd([[colorscheme rose-pine]])
    --     end
    -- },
    -- {
    --     --  MONOKAI
    --     'tanvirtin/monokai.nvim',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.cmd([[colorscheme monokai]])
    --     end
    -- },
    {
        -- html quickness
        "mattn/emmet-vim",
        ft = "html"
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    { -- ez commenting
        "terrortylor/nvim-comment",
        config = function()
            require("nvim_comment").setup()
        end
    },
    {
        -- auto closing pairs
        "windwp/nvim-autopairs",
        lazy = true,
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()
        end
    },
    {
        -- auto html tags <></>
        "windwp/nvim-ts-autotag",
        ft = { "html", "javascript", "typescript", "jsx", "tsx", "xml" }
    },
    {
        "norcalli/nvim-colorizer.lua",
        ft = "css",
        config = function()
            require('colorizer').setup()
        end

    },
    {
        -- REST api testing routes without postman
        -- for rest files
        "diepm/vim-rest-console",
        lazy = true,
        ft = "rest"
    },

    -- vim tests
    {
        "vim-test/vim-test",
        lazy = true,
        cmd = "TestFile"
    },

    {
        -- Snippets
        "hrsh7th/vim-vsnip",
        dependencies = {
            "hrsh7th/vim-vsnip-integ",
            "rafamadriz/friendly-snippets",
        },
        lazy = true,
        event = "InsertEnter"
    },

    -- Database
    {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            "tpope/vim-dadbod",
            "kristijanhusak/vim-dadbod-completion",
        },
        lazy = true,
        ft = { 'sql', 'mysql', 'plsql' },
        cmd = 'DBUI'
    },
    {
        -- loading last
        "kyazdani42/nvim-web-devicons",
        lazy = true
    },
    {
        "ThePrimeagen/harpoon",
        lazy = true
    },
    {
        'ThePrimeagen/vim-be-good',
        lazy = true,
        cmd = 'VimBeGood'
    },
    {
        "michaelb/sniprun",
        lazy = true,
        ft = "python",
        branch = "master",

        build = "sh install.sh",
        -- do 'sh install.sh 1' if you want to force compile locally
        -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

        config = function()
            require("sniprun").setup({
                -- your options
            })
        end,
    },
    {
        'mfussenegger/nvim-dap-python',
        lazy = true,
        ft = 'python',
        config = function()
            require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
        end
    },
    {
        'stevearc/oil.nvim',
        lazy   = true,
        cmd    = "Oil",
        config = function()
            require("oil").setup({
                skip_confirm_for_simple_edits = true,
            })
        end,
        opt    = vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    },


}
