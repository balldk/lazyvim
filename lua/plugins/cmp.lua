if true then
  return {}
end

return {
  {
    "hrsh7th/nvim-cmp",
    -- Override the default opts for nvim-cmp
    event = "InsertEnter",
    opts = function()
      local cmp = require("cmp")

      return {
        mapping = cmp.mapping.preset.insert({
          ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        }),
      }
    end,
  },
}
