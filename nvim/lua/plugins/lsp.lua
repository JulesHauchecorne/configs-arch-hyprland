return {
    -- Lsp zero
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    lazy = true,
    ft = { "java", "lua", "c", "cpp", "javascript", "typescript", "go", "python", "html", "css", "haskell", "sql", "fish", "json", "xml", "sh", "bash" },
    config = function()
        local lsp = require('lsp-zero')

        lsp.preset('recommended')

        lsp.ensure_installed({
            'tsserver',
            'lua_ls',
            'jdtls',
            'clangd',
            'gopls',
            'cssls',
            'html',
            'pyright',
            -- 'jedi_language_server'
        })

        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ["<C-Space>"] = cmp.mapping.complete(),
            ['<CR>'] = cmp.mapping.confirm({ select = false })

        })

        lsp.setup_nvim_cmp({
            mapping = cmp_mappings
        })

        -- Necessary for css autocomplete to work with cssls  
        local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
        require 'lspconfig'.cssls.setup {
            capabilities = capabilities,
        }

        lsp.set_preferences({
            suggest_lsp_servers = false,
            sign_icons = {
                error = '',
                warn = '',
                hint = '󰋖',
                info = ''
            }
        })

        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("v", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            vim.keymap.set('n', '<leader>er', function() vim.diagnostic.open_float() end, opts)
        end)

        -- for nvim jdtls to work
        lsp.skip_server_setup({ 'jdtls' })

        lsp.setup()

        cmp.setup({
            sources = {
                { name = 'path' },
                { name = 'vsnip' },
                { name = 'nvim_lsp' },
                { name = 'buffer',                 keyword_length = 3 },
                { name = 'luasnip',                keyword_length = 2 },
                { name = 'bootstrap' },
                { name = 'nvim_lsp_signature_help' },
            }
        })

        vim.diagnostic.config({
            virtual_text = true
        })
    end
}
