local lua_root_dir = vim.fs.root(0, { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", ".git" })
if vim.fn.executable("pyright-langserver") then
  vim.lsp.start({
    name = "lua_ls",
    cmd = { "lua-language-server" },
    root_dir = lua_root_dir,
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" }
        }
      },
    },
  })
end
