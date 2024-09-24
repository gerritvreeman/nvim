vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 50 })
  end,
})
vim.api.nvim_create_autocmd("TermOpen", { command = "setlocal nonumber | setlocal nomodified | startinsert!" })
vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, { pattern = "term://*", command = "startinsert!" })
vim.api.nvim_create_autocmd("BufLeave", { pattern = "term://*", command = "stopinsert" })
