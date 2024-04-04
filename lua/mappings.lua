require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>fi", "<cmd> OrganizeImports <CR>" )
map("n","<leader>tt", "<cmd> TroubleToggle <CR>"  )
map("n","<leader>mp", "<cmd> MarkdownPreviewToggle <CR>"  )

map("i", "jk", "<ESC>")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")



