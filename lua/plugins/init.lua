return {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.none-ls"
    end,
  },

  {
    "gelguy/wilder.nvim",
    lazy = false,
    config = function()
      require "configs.wilder"
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "pyright",
        "eslint-lsp",
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
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
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
    },
  },
}
