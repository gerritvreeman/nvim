local ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then
  print("Module had an error")
else
  ts.setup({
    ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "javascript",
    "html",
    "python",
    "bash",
    "markdown",
    "markdown_inline",
    "latex",
    "regex",
    "swift",
    "yaml",
    }
    })
end
