vim.o.autochdir = true
vim.o.breakindent = true
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)
if vim.version().minor >= 11 then
  vim.o.completeopt = "menu,menuone,popup,fuzzy,noinsert"
else
  vim.o.completeopt = "menu,menuone,popup,noinsert"
end
vim.o.equalalways = false
vim.o.expandtab = true
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.foldlevelstart = 99
vim.o.foldmethod = 'expr'
vim.o.gdefault = true
vim.o.ignorecase = true
vim.o.infercase = true
vim.o.laststatus = 3
vim.o.linebreak = true
vim.o.list = true
vim.o.number = true
vim.o.pumheight = 10
vim.o.ruler = false
vim.o.shiftwidth = 2
vim.o.signcolumn = "yes"
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.splitbelow = true
vim.o.splitkeep = 'screen'
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.virtualedit = 'block'
vim.o.wrap = false

-- Set the background according to the system theme (if we're on MacOS)
local function set_bg(obj)
  if obj.code == 1 then
    vim.schedule(function() vim.o.background = "light" end)
  else
    vim.schedule(function() vim.o.background = "dark" end)
  end
end
if vim.uv.os_uname().sysname == "Darwin" then
  vim.system({ "defaults", "read", "-g", "AppleInterfaceStyle" }, { text = true }, set_bg)
end
vim.cmd.colorscheme("solarized")
