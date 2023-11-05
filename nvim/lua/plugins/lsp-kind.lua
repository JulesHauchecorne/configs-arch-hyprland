return {
        -- lsp completion icons
"onsails/lspkind.nvim",
lazy = true,
event = "InsertEnter",
config = function()
        local kind_icons = {
            Text = "",
            Method = "𝘮",
            Function = "ƒ",
            Constructor = "",
              Field = '🠶',
          Variable = '𝓧',
            Class = "󰠱",
            Interface = "",
            Module = "",
            Property = "󰜢",
            Unit = "",
            Value = "󰎠",
            Enum = "",
            Keyword = "󰌋",
            Snippet = "",
            Color = "󰏘",
            File = "󰈙",
            Reference = "",
            Folder = "󰉋",
            EnumMember = "",
            Constant = '𝜋',
            Struct = "",
            Event = "",
            Operator = "󰆕",
            TypeParameter = "󰅲",
        }

        local cmp = require("cmp")
        cmp.setup({
            formatting = {
                format = function(entry, vim_item)
                    -- Kind icons
                    vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
                    -- Source
                    vim_item.menu = ({
                        buffer = "[Buffer]",
                        nvim_lsp = "[LSP]",
                        luasnip = "[LuaSnip]",
                        nvim_lua = "[Lua]",
                        latex_symbols = "[LaTeX]",
                    })[entry.source.name]
                    return vim_item
                end,
            },
        })
end
}
