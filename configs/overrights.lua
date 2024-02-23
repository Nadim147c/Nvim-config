local M = {}

M.treesitter = {
  prefer_git = true,
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    disable = { "python" },
  },
}

M.mason = {
  ensure_installed = {
    "black",
    "pyright",
    "eslint-lsp",
    "js-debug-adapter",
    "prettierd",
    "typescript-language-server",
    "emmet-language-server",
    "powershell-editor-services",
    "stylua",
    "lua-language-server",
    "json-lsp",
    "clangd",
    "css-lsp",
    "html-lsp",
    "yaml-language-server",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    -- icons = {
    --   show = {
    --     git = true,
    --   },
    -- },
  },
}

return M
