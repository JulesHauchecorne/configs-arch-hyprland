return {
    {
        -- Telescope
        "nvim-telescope/telescope.nvim",
        lazy = true,
        tag = "0.1.4",
        ft = { "java", "lua", "c", "cpp", "js", "ts", "go", "py", "html", "css", "hs", "sql" },
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
        lazy = false,
        priority = 1001,
        --      cmd = { 'NvimTreeFindFileToggle', 'NvimTreeOpen' },
        config = function()
            require("nvim-tree").setup()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end
    },
    {
        -- colorschemes
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        dependencies = { "rktjmp/lush.nvim" },
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end
    }, {
    -- html quickness
    "mattn/emmet-vim",
    ft = "html"
},
    {
        -- markdown preview
        "iamcco/markdown-preview.nvim",
        ft = "md"
    },
    -- ez commenting
    {
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
        ft = { "html", "js", "ts", "jsx", "tsx", "xml" }
    },
    {
        "norcalli/nvim-colorizer.lua",
        ft = "css"
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
        cmd= 'DBUI'
    },
    {
        -- loading last
        "kyazdani42/nvim-web-devicons",
        lazy = true
    },
    {
        "ThePrimeagen/harpoon",
        lazy = true
    }
}
