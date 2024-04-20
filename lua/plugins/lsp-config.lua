return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require "configs.lsp"
    end,
}
