vim.keymap.set({ "n", "x" }, "j", [[v:count == 0 ? 'gj' : 'j']], { expr = true })
vim.keymap.set({ "n", "x" }, "k", [[v:count == 0 ? 'gk' : 'k']], { expr = true })
vim.keymap.set("n", "<A-j>", ":m .+1<cr>==")
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv")
vim.keymap.set("n", "<leader>b", ":ls<cr>:b ", { desc = "List and switch buffers" })
vim.keymap.set("n", "<BS>", "<C-^>", { desc = "Alternate file" })
vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<", "<<")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", "y", "ygv<esc>")
vim.keymap.set({ "n", "t" }, "<C-h>", "<Cmd>wincmd h<CR>", { desc = "Left" })
vim.keymap.set({ "n", "t" }, "<C-j>", "<Cmd>wincmd j<CR>", { desc = "Down" })
vim.keymap.set({ "n", "t" }, "<C-k>", "<Cmd>wincmd k<CR>", { desc = "Up" })
vim.keymap.set({ "n", "t" }, "<C-l>", "<Cmd>wincmd l<CR>", { desc = "Right" })
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { desc = "Normal mode" })
vim.keymap.set("n", "<esc>", ":noh<cr><esc>", { desc = "Clear search highlights" })
vim.keymap.set("n", "<leader>oo", ":silent !open .<cr>", { desc = "Open finder" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>v", ":e $MYVIMRC<cr>", { desc = "Edit Neovim config" })
vim.keymap.set("n", "<leader>cd", ":cd %:h<cr>", { desc = "Change dir to current file" })

-- Some option toggles
vim.keymap.set("n", "<leader>ob", ':exec &bg=="light"? "set bg=dark" : "set bg=light"<CR>',
  { desc = "Toggle background" })
vim.keymap.set("n", "<leader>occ", ':exec &cc==80? "setlocal cc=" : "setlocal cc=80"<CR>',
  { desc = "Toggle colorcolumn" })
vim.keymap.set("n", "<leader>ocl", ":setlocal invcursorline<cr>", { desc = "Toggle cursorline" })
vim.keymap.set("n", "<leader>os", ":setlocal invspell<cr>", { desc = "Toggle spell" })
vim.keymap.set("n", "<leader>ow", ":setlocal invwrap<cr>", { desc = "Toggle wrap" })
vim.keymap.set("n", "<leader>on", ":setlocal invnumber<cr>", { desc = "Toggle number" })
vim.keymap.set("n", "<leader>or", ":setlocal invrelativenumber<cr>", { desc = "Toggle number" })

-- Readline keys
vim.keymap.set("i", "<C-b>", "<left>", { desc = "Left" })
vim.keymap.set("i", "<C-f>", "<right>", { desc = "Right" })
vim.keymap.set("i", "<C-a>", "<home>", { desc = "Append" })
vim.keymap.set("i", "<C-e>", "<end>", { desc = "End" })
vim.keymap.set("i", "<C-d>", "<del>", { desc = "Delete" })
vim.keymap.set("i", "<C-k>", "<C-o>D", { desc = "Delete to end of line" })
vim.keymap.set('i', '<C-n>', function()
  if vim.fn.pumvisible() ~= 0 then
    return '<C-n>'
  else
    return '<down>'
  end
end, { expr = true })
vim.keymap.set('i', '<C-p>', function()
  if vim.fn.pumvisible() ~= 0 then
    return '<C-p>'
  else
    return '<up>'
  end
end, { expr = true })

-- Completion and snippets
vim.keymap.set({ 'i', 's' }, '<Tab>', function()
  if vim.fn.pumvisible() ~= 0 then
    return '<C-y>'
  elseif vim.snippet.active({ direction = 1 }) then
    return '<Cmd>lua vim.snippet.jump(1)<CR>'
  else
    return '<Tab>'
  end
end, { expr = true })
