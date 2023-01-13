require('user.lsp.langs.rust')
require('user.lsp.langs.python')
require('user.lsp.langs.js-ts')
require('user.lsp.langs.lua')
require('user.lsp.langs.go')
require('user.lsp.langs.sh')

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua", filetypes = { "lua" } },
  { command = "shfmt", filetypes = { "sh", "zsh" } },
}
