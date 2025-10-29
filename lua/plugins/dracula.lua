return {
  -- Add the dracula plugin
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
