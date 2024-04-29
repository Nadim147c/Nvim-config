return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
auto_install = true,
        prefer_git = true,
        ensure_installed = {
            "lua",
            "javascript",
            "typescript",
            "markdown",
        },
        indent = {
            enable = true,
            disable = { "python" },
        },
    },
}
