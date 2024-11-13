vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.hl.on_yank({ higroup = 'Visual', timeout = 50 })
  end,
})
vim.api.nvim_create_autocmd("TermOpen", { command = "setlocal nonumber | setlocal nomodified | startinsert!" })
vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, { pattern = "term://*", command = "startinsert!" })
vim.api.nvim_create_autocmd("BufLeave", { pattern = "term://*", command = "stopinsert" })
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "help", "qf" },
  callback = function()
    vim.keymap.set("n", "q", "<c-w>c", { buffer = true })
  end
})
