return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      incremental_selection = {
        keymaps = {
          init_selection = "\\",
          node_incremental = "\\",
          -- node_decremental = "<C-->",
        },
      },
    },
  },
}
