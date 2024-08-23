return {
  {
    "folke/tokyonight.nvim",
    enabled = false,
    opts = {
      style = "day",
      styles = {
        --sidebars = "transparent",
        --floats = "transparent",
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
}
