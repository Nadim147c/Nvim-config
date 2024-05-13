-- Open telescope or nvim-tree on VimEnter
vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function(data)
        local directory = vim.fn.isdirectory(data.file) == 1

        if directory then
            vim.cmd.cd(data.file)
            require("nvim-tree.api").tree.open()
            return
        end

        if vim.fn.argv(0) == "" then
            require("telescope.builtin").find_files()
        end
    end,
})
