vim.keymap.set("n", "<localleader><localleader>", "<cmd>Term python3 \"" .. vim.fn.expand("%") .. "\"<cr>",
  { buffer = true, desc = "Run the current python file in a terminal" })


local python_root_dir = vim.fs.root(0, { "pyproject.toml", "setup.py" })
if vim.fn.executable("ruff") then
  vim.lsp.start({
    name = "ruff",
    cmd = { "ruff", "server", "--preview" },
    root_dir = python_root_dir,
  })
end
if vim.fn.executable("pyright-langserver") then
  vim.lsp.start({
    name = "pyright",
    cmd = { "pyright-langserver", "--stdio" },
    root_dir = vim.fs.root(0, { "pyproject.toml", "setup.py" }),
    settings = {
      python = {
        analysis = {
          ignore = { "*" },
          autoSearchPaths = true,
          diagnosticMode = "openFilesOnly",
          useLibraryCodeForTypes = true
        }
      },
    }
  })
end
