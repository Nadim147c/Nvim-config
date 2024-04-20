local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local function emmet_language_server()
    lspconfig.emmet_language_server.setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        filetypes = { "css", "eruby", "html", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
    }
end

local function powershell_es()
    lspconfig.powershell_es.setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        filetypes = { "ps1" },
        bundle_path = vim.fn.stdpath "data" .. "/mason/packages/powershell-editor-services",
        settings = { powershell = { codeFormatting = { Preset = "OTBS" } } },
    }
end

local function tsserver()
    local function organize_imports()
        local params = {
            command = "_typescript.organizeImports",
            arguments = { vim.api.nvim_buf_get_name(0) },
        }
        vim.lsp.buf.execute_command(params)
    end

    vim.keymap.set({ "n", "v" }, "<leader>fi", organize_imports, { desc = "Organize ts/js imports" })

    lspconfig.tsserver.setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        init_options = { preferences = { disableSuggestions = false } },
        commands = {
            OrganizeImports = { organize_imports, description = "Organize Imports" },
        },
    }
end

require("mason-lspconfig").setup {
    ensure_installed = {},
    opts = {
        auto_install = true,
    },
    handlers = {
        function(server_name)
            lspconfig[server_name].setup {
                on_attach = on_attach,
                on_init = on_init,
                capabilities = capabilities,
            }
        end,

        emmet_language_server = emmet_language_server,
        powershell_es = powershell_es,
        tsserver = tsserver,
    },
}
