local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local lsp_zero = require "lsp-zero"

lsp_zero.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps { buffer = bufnr }
end)

require("mason-lspconfig").setup {
  ensure_installed = {},
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
      }
    end,

    emmet_language_server = function()
      lspconfig.emmet_language_server.setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        filetypes = { "css", "eruby", "html", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
      }
    end,

    powershell_es = function()
      lspconfig.powershell_es.setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        filetypes = { "ps1" },
        bundle_path = vim.fn.stdpath "data" .. "/mason/packages/powershell-editor-services",
        settings = { powershell = { codeFormatting = { Preset = "OTBS" } } },
      }
    end,

    tsserver = function()
      local function organize_imports()
        local params = {
          command = "_typescript.organizeImports",
          arguments = { vim.api.nvim_buf_get_name(0) },
        }
        vim.lsp.buf.execute_command(params)
      end

      lspconfig.tsserver.setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        init_options = { preferences = { disableSuggestions = false } },
        commands = {
          OrganizeImports = { organize_imports, description = "Organize Imports" },
        },
      }
    end,
  },
}
