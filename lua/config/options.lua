-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Map leader key before lazy
vim.g.mapleader = ","

-- Use local virtualenv for python environment
vim.g.python3_host_prog = vim.fn.stdpath("config") .. "/.venv/bin/python"

vim.wo.relativenumber = false
