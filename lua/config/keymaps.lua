-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>ww", ":wa<CR>", { desc = "Save all", remap = true })
map("n", "<S-h>", ":vertical resize +2<CR>", { desc = "Resize +2", remap = true })
map("n", "<S-l>", ":vertical resize -2<CR>", { desc = "Resize -2", remap = true })
map("v", "<tab>", ">gv", { desc = "Indent", remap = true })
map("v", "<S-tab>", "<gv", { desc = "Back Indent", remap = true })
