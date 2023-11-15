local config = require "plugins.configs.lspconfig"
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "pyright", "eslint", "jsonls", "clangd", "yamlls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- local bundle_path = vim.fn.stdpath "data" .. "/mason/packages/powershell-editor-services"
-- local command_fmt =
--   [[& '%s/PowerShellEditorServices/Start-EditorServices.ps1' -BundledModulesPath '%s' -LogPath '%s/powershell_es.log' -SessionDetailsPath '%s/powershell_es.session.json' -FeatureFlags @() -AdditionalModules @() -HostName nvim -HostProfileId 0 -HostVersion 1.0.0 -Stdio -LogLevel Normal]]
-- local temp_path = vim.fn.stdpath "cache"
-- local command = command_fmt:format(bundle_path, bundle_path, temp_path, temp_path)
--
-- lspconfig.powershell_es.setup {
--   filetypes = { "ps1" },
--   bundle_path = vim.fn.stdpath "data" .. "/mason/packages/powershell-editor-services",
--   cmd = { "pwsh", "-NoLogo", "-Command", command },
-- }

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = { preferences = { disableSuggestions = false } },
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports",
    },
  },
}
