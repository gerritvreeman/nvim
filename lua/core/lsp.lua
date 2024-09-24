-- LSP keybindings
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.supports_method('textDocument/definition') then
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf, desc = "Go to definition" })
    end
    if client.supports_method('textDocument/declaration') then
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = args.buf, desc = "Go to declaration" })
    end
    if client.supports_method('textDocument/implementation') then
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = args.buf, desc = "Go to implementation" })
    end
    if client.supports_method('textDocument/typeDefinition') then
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, { buffer = args.buf, desc = "Type definition" })
    end
    if client.supports_method('textDocument/formatting') then
      vim.keymap.set('n', '<leader>f', function()
        vim.lsp.buf.format({ async = true, bufnr = args.buf, id = client.id })
      end, { buffer = args.buf, desc = "Format" })

      -- Format the current buffer on save
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ async = true, bufnr = args.buf, id = client.id })
        end,
      })
    end
    if vim.version().minor >= 11 then
      if client.supports_method('textDocument/completion') then
        vim.lsp.completion.enable(true, client.id, args.buf)
      end
    end
  end
})
-- lsp clients are started in the after/ftplugin files.
