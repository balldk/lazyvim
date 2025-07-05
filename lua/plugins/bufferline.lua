return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Tab" },
      { "<tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Tab" },
    },
  },
}
