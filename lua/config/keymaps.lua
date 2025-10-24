-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" },
  callback = function()
    vim.keymap.set("i", "<Tab>", function()
      local line = vim.api.nvim_get_current_line()
      local col = vim.api.nvim_win_get_cursor(0)[2]
      local before_cursor = line:sub(1, col)

      -- Check if it looks like an emmet abbreviation
      if before_cursor:match("[%w%.#%*%+>%^%$]+$") and vim.fn["emmet#isAbbr"]() == 1 then
        return vim.fn["emmet#expandAbbrIntelligent"]("\t")
      else
        return "<Tab>"
      end
    end, { expr = true, buffer = true })
  end,
})
