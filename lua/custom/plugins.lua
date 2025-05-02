local plugins = {
  {
    "ngtuonghy/live-server-nvim",
    event = "VeryLazy",
    build = "LiveServerInstall",
    config = function ()
      require "custom.configs.live-server"
    end
  },
  {
    'tzachar/local-highlight.nvim',
    config = function()
      require('local-highlight').setup()
    end
  },
  {
    "rockyzhang24/vim-illuminate",
    branch = "fix-encoding",
    lazy = true,
    event = "BufReadPost",
    config = function(_, opts)
      require("illuminate").configure(opts)
    end,
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettierd",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
      }
      return opts
    end,
  }
}
return plugins
