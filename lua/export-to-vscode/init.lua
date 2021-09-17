local function launch()
  local buffers = vim.api.nvim_list_bufs()
  local fileNames = {}

  for _, buffer in ipairs(buffers) do
    if (vim.api.nvim_buf_is_valid(buffer) and vim.bo[buffer].buflisted) then
      local fileName = vim.api.nvim_buf_get_name(buffer)

      if (vim.api.nvim_get_current_buf() == buffer) then
        local location = vim.api.nvim_win_get_cursor(0)
        fileName = fileName .. ":" .. location[1] .. ":" .. location[2] + 1
        table.insert(fileNames, 1, fileName)
      else
        table.insert(fileNames, fileName)
      end
    end
  end

  local cwd = vim.fn.getcwd()
  vim.cmd("!code -g " .. cwd .. " " .. table.concat(fileNames, " "))
end

return {
  launch = launch
}

