local function send_to_term(cmd)
  local term_bufnr
  for _, winnr in ipairs(vim.api.nvim_list_wins()) do
    local bufnr = vim.api.nvim_win_get_buf(winnr)
    if vim.api.nvim_get_option_value('buftype', { buf = bufnr }) == 'terminal' then
      vim.api.nvim_set_current_win(winnr)
      vim.cmd("normal! G")
      term_bufnr = bufnr
      break
    end
  end
  if term_bufnr == nil then
    local term_height = math.floor(vim.api.nvim_win_get_height(0) * 0.3)
    vim.cmd("below " .. term_height .. "split | terminal")
    vim.o.buflisted = false
    term_bufnr = vim.api.nvim_win_get_buf(0)
  end
  if cmd ~= "" then
    vim.api.nvim_chan_send(vim.bo[term_bufnr].channel, cmd .. "\n")
    vim.cmd("wincmd p")
  end
end

vim.api.nvim_create_user_command("Term", function(args)
  local cmd = ""
  if (args["args"]) then
    cmd = cmd .. args["args"]
  end
  send_to_term(cmd)
end, { nargs = "*" })

vim.keymap.set("n", "<localleader><localleader>", ":Term<cr>")
