-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Map leader key before lazy
vim.g.mapleader = ","

-- Use local virtualenv for python environment
vim.g.python3_host_prog = vim.fn.stdpath("config") .. "/.venv/bin/python"

vim.wo.relativenumber = false

vim.g.fugitive_gitlab_domains = { "gitlab.rivianvw.io" }

-- format text in markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- Set the width to wrap lines at 120 characters
    vim.opt_local.textwidth = 120
    -- Configure how text is formatted
    vim.opt_local.formatoptions = "tcq"
  end,
})
