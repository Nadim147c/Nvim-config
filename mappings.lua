local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Add breakpoint at line" },
    ["<leader>dr"] = { "<cmd> DapContinue <CR>", "Run or continue the debugger" },
  },
}

M.general = {
  n = {
    [";"] = { ":", "Easy command mode", opts = { nowait = true } },
    -- ["<leader>fm"] = { "<cmd> FormatWriteLock <CR>", "Format this buffer" },
    ["<leader>fi"] = { "<cmd> OrganizeImports <CR>", "Organize imports in ts or js file." },
    ["<leader>tt"] = { "<cmd> TroubleToggle <CR>", "Toggle trouble window" },
    ["<leader>mp"] = { "<cmd> MarkdownPreviewToggle <CR>", "Preview markdown file" },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

return M
