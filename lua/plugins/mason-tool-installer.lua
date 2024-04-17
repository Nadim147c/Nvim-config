return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    event = "VeryLazy",
    config = function()
        require("mason-tool-installer").setup {}
    end,
}
