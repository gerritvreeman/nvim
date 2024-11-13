vim.keymap.set("n", "<localleader><localleader>", "<cmd>Term python3 \"" .. vim.fn.expand("%") .. "\"<cr>",
  { buffer = true, desc = "Run the current python file in a terminal" })
