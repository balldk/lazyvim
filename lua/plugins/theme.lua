return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        transparent = true,
        colors = {
          theme = { all = { ui = { bg_gutter = "none" } } },
        },
      })
    end,
  },
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        transparent = true,
      })
    end,
  },
  {
    "Shatur/neovim-ayu",
  },
}
