return {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async", "nvim-treesitter/nvim-treesitter" },
    event = "BufRead",
    config = function()
        local ufo = require "ufo"

        ufo.setup {
            provider_selector = function(_, _, _)
                return { "treesitter", "indent" }
            end,
        }

        vim.o.foldcolumn = "1"
        vim.o.foldlevel = 99
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true
    end,
}
