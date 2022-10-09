vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "Jaq",
    "qf",
    "help",
    "man",
    "lspinfo",
    "spectre_panel",
    "lir",
    "DressingSelect",
    "tsplayground",
    "Markdown",
  },
  callback = function()
    vim.cmd [[
  nnoremap <silent> <buffer> q :close <CR>
  set nobuflisted
  ]]
  end
})
-- TODO: jaq file
-- vim.api.nvim_create_autocmd({"FileType"},{
--   pattern = "jaq",
--   callback = function()
--   vim.cmd [[
-- nnoremap <silent> <buffer> kkk
--   ]]
-- })
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "" },
  callback = function()
    local buf_ft = vim.bo.filetype
    if buf_ft == "" or buf_ft == nil then
      vim.cmd [[
nnoremap <silent> <buffer> q:close <CR>
set nobuflisted
]]
    end
  end
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "term://*" },
  callback = function()
    vim.cmd "startinsert!"
    -- TODO: if java = 2
    vim.cmd "set cmdheight=1"
  end,
})
local fold = vim.api.nvim_create_augroup("fold", { clear = true })
vim.api.nvim_create_autocmd("BufWinLeave", {
  pattern = { "*.lua" },
  -- enable wrap mode for json files only
  command = "mkview",
})
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = { "*" },
  command = "silent!loadview"
})
