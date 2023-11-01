local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    markdown = {
      require("formatter.filetypes.markdown").prettier,
    },
    -- Not working with formatter.nvim
    -- json = {
    --   require("formatter.filetypes.json").prettier,
    -- },
    python = {
      require("formatter.filetypes.python").black,
    },
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})

-- Json formatter not working for some reason
-- So, this hack should solve this problem for the time being
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.json" },
  desc = "Auto-format json files after saving",
  callback = function()
    local file_name = vim.api.nvim_buf_get_name(0)
    vim.cmd(":!prettier -w --log-level silent " .. file_name)
  end,
})

return M
