return {
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = { "markdown" },
    config = function()
      vim.g.mkdp_auto_start = 0 -- Set to 1 to auto-start preview on Markdown buffer entry
      vim.g.mkdp_auto_close = 1 -- Set to 1 to auto-close preview when leaving Markdown buffer
      -- Other configurations can be added here
    end,
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", desc = "Toggle Markdown Preview" },
    },
  },
}
