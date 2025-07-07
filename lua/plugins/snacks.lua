return {
  {
    "snacks.nvim",
    opts = {
      explorer = {
        replace_netrw = true,
      },
      picker = {
        win = {
          backdrop = {
            transparent = true,
            blend = 99,
          },
          input = {
            keys = {
              ["<esc>"] = { "close", mode = "i" },
            },
          },
        },
        sources = {
          layout = {
            layout = {
              width = 0.1,
            },
          },
        },
      },
    },
  },
}
