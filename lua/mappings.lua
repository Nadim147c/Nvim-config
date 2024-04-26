require "nvchad.mappings"

-- add yours here

vim.keymap.set({ "n", "v" }, ";", ":", { desc = "CMD enter command mode" })

vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Put without losing current yank" })

vim.keymap.set("n", "<leader>sr", ":%s/", { desc = "Search and replace for this buffer" })
