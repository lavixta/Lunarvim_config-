lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.dap.active = true
lvim.transparent_window = true
vim.opt.showtabline = 0
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

lvim.lsp.diagnostics.virtual_text = true
lvim.builtin.breadcrumbs.active = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.autotag = true
lvim.builtin.theme.options.dim_inactive = true
lvim.builtin.theme.options.style = "storm"
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
