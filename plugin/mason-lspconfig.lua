local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('mason-lspconfig').setup({

    ---@type string[]
    ensure_installed = {

        'pyright',
        'ts_ls',
        'html',
        'cssls',
        'lua_ls',
        'rust_analyzer',
        'jdtls',
        'tailwindcss',
        'angularls',
        'sqlls',
        'postgres_lsp',


    },

    handlers = {
                function(server_name) -- default handler (optional)

                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim", "it", "describe", "before_each", "after_each" },
                                }
                            }
                        }
                    }
                end,
            },

    ---@type boolean | string[] 
    automatic_enable = true,

})
