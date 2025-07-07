-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.g.lazyvim_picker = "telescope"
vim.api.nvim_create_autocmd("RecordingEnter", {
  callback = function()
    vim.opt.cmdheight = 1
  end,
})
vim.api.nvim_create_autocmd("RecordingLeave", {
  callback = function()
    vim.opt.cmdheight = 0
  end,
})

-- vim.cmd("hi Normal ctermbg=none guibg=none")
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     vim.cmd("hi Normal ctermbg=NONE guibg=NONE ")
--   end,
-- })
