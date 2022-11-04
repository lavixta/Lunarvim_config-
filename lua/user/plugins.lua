lvim.plugins = {
  -- "rcarriga/nvim-dap-ui",
  "kevinhwang91/nvim-bqf",
  "karb94/neoscroll.nvim",
  "windwp/nvim-ts-autotag",
  { "kylechui/nvim-surround" },
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "moll/vim-bbye",
  { "folke/todo-comments.nvim",
    config = function()
      require("todo-comments.").setup {
        search = {
          command = "rg",
          args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
          },
          -- regex that will be used to match keywords.
          -- don't replace the (KEYWORDS) placeholder
          pattern = [[\b(KEYWORDS):]], -- ripgrep regex
          -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
        },
      }
    end
  },
  "is0n/jaq-nvim",
  {
    "0x100101/lab.nvim",
    run = "cd js && npm ci",
  },
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "lvimuser/lsp-inlayhints.nvim",
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    run = ":call mkdp#util#install()",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },

  "p00f/nvim-ts-rainbow",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },

  {
    cmd = "TroubleToggle",
    "folke/trouble.nvim",
  },
  -- { "github/copilot.vim",
  --   config = function()
  --     require("user.copilot").config()
  --   end },
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({
          suggestion = {
            enabled = true,
            auto_trigger = false,
            debounce = 75,
            keymap = {
              accept = "<C-l>",
              next = "<C-k>",
              prev = "<C-j>",
              dismiss = "<C-]>",
            },
          }
        })
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  "monaqa/dial.nvim",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "mfussenegger/nvim-dap-python",
  "simrat39/rust-tools.nvim",
  --Set up in file git
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",

  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  --   requires = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --   },
  -- },

}
