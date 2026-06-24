-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- on macos with tmux, escape can be interpretted as alt <M-j> resulting in line moves. Disable it.

vim.keymap.del("n", "<M-j>")
vim.keymap.del("n", "<M-k>")
vim.keymap.del("v", "<M-j>")
vim.keymap.del("v", "<M-k>")

-- Copy filename to clipboard
vim.keymap.set("n", "<leader>fC", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  vim.notify("Copied filename to clipboard")
end, { desc = "Copy filename to clipboard" })
