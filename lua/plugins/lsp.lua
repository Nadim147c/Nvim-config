return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
    },
    config = function()
        require "configs.lspconfig"
    end,
}
