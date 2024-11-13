return {
  'echasnovski/mini.files',
  config = function()
    require('mini.files').setup()
    vim.keymap.set("n", "<leader>e", function(...)
      if not require('mini.files').close() then require('mini.files').open(...) end
    end)
  end
}
