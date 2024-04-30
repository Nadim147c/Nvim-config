return {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local null_ls = require "null-ls"

        null_ls.setup {
            sources = {
                -- null_ls.builtins.diagnostics.ruff,
                null_ls.builtins.diagnostics.mypy,
                null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.code_actions.gitsigns,
            },
        }
    end,
}
