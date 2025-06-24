return {
  {
    "NeogitOrg/neogit",
    enabled = false, -- Set to false to disable Neogit
  },
  {
    "tpope/vim-fugitive",
    -- Set lazy = false to ensure it loads early, as Git commands might be needed often.
    -- Alternatively, you can use the 'cmd' property to load it only when specific commands are run.
    lazy = false,

    -- You can add custom keymaps here if you wish.
    -- LazyVim's default keymaps are often defined with '<leader>g'
    keys = {
      -- Example keymaps (adjust to your preference):
      --{ "<leader>gs", "<cmd>Git status<CR>", desc = "Git Status" },
      { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git Commit" },
      --{ "<leader>gp", "<cmd>Git push<CR>", desc = "Git Push" },
      --{ "<leader>gl", "<cmd>Git log<CR>", desc = "Git Log" },
      --{ "<leader>gd", "<cmd>Gdiff<CR>", desc = "Git Diff" }, -- For Gdiff (diff the current file)
      --{ "<leader>ga", "<cmd>Gwrite<CR>", desc = "Git Add (Gwrite)" }, -- For Gwrite (stage current file)
      -- Add more keymaps as per your common fugitive workflows
    },

    -- You can also add any specific fugitive configurations here in a config function:
    -- config = function()
    --   -- For example, to enable fugitive's statusline component
    --   vim.cmd("set laststatus=2") -- Ensure statusline is always visible
    --   vim.cmd("set statusline+=%{FugitiveStatusline()}")
    -- end,
  },
}
