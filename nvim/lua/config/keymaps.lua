-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = function(desc)
  return { desc = desc, remap = true, silent = true }
end

-- Esc
map({ "i", "x", "n", "s" }, "<leader>f", "<esc>", opts("ESC"))

-- Save
map({ "i", "x", "n", "s" }, "<leader>s", "<cmd>w<cr><esc>", opts("SAVE FILE"))

-- Quit
map({ "i", "x", "n", "s" }, "<leader>q", "<cmd>q<cr><esc>", opts("QUIT"))
map({ "i", "x", "n", "s" }, "<leader>qa", "<cmd>qa<cr>", opts("QUIT ALL"))

-- Resize window
map({ "i", "x", "n", "s" }, "<C-S-Up>", "<cmd>resize +2<cr>", opts("SIZE UP CURRENT WINDOW HORIZONTAL"))
map({ "i", "x", "n", "s" }, "<C-S-Down>", "<cmd>resize -2<cr>", opts("SIZE DOWN CURRENT WINDOW HORIZONTAL"))
map({ "i", "x", "n", "s" }, "<C-S-Left>", "<cmd>vertical resize -2<cr>", opts("SIZE DOWN CURRENT WINDOW VERTICAL"))
map({ "i", "x", "n", "s" }, "<C-S-Right>", "<cmd>vertical resize +2<cr>", opts("SIZE UP CURRENT WINDOW VERTICAL"))
