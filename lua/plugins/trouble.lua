return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
        require("trouble").setup {}
        vim.keymap.set({ "n", "v" }, "<leader>tt", "<cmd> TroubleToggle <CR>", { desc = "Toggle trouble window" })
    end,
}
