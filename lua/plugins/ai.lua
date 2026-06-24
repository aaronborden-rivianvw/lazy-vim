return {
  --{
  --  "ravitemer/mcphub.nvim",
  --  dependencies = {
  --    "nvim-lua/plenary.nvim",
  --  },
  --  build = "npm install -g mcp-hub@latest", -- Installs `mcp-hub` node binary globally
  --  config = function()
  --    require("mcphub").setup()
  --  end,
  --},
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = function()
      local user = vim.env.USER or "me"
      return {
        auto_insert_mode = true,
        question_header = "  " .. user .. " ",
        answer_header = "  Copilot ",
        window = {
          width = 0.4,
        },
      }
    end,

    -- https://github.com/CopilotC-Nvim/CopilotChat.nvim/issues/1153
    --url = "https://github.com/adborden/CopilotChat.nvim",
    --branch = "bugfix/accept-strips-path-1153",
  },
  --{
  --  "olimorris/codecompanion.nvim",
  --  opts = {},
  --  dependencies = {
  --    "nvim-lua/plenary.nvim",
  --    "nvim-treesitter/nvim-treesitter",
  --  },
  --},
  --{
  --  "yetone/avante.nvim",
  --  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --  -- ⚠️ must add this setting! ! !
  --  build = function()
  --    -- conditionally use the correct build system for the current OS
  --    if vim.fn.has("win32") == 1 then
  --      return "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
  --    else
  --      return "make"
  --    end
  --  end,
  --  event = "VeryLazy",
  --  version = false, -- Never set this value to "*"! Never!
  --  ---@module 'avante'
  --  ---@type avante.Config
  --  opts = {
  --    -- add any opts here
  --    -- for example
  --    provider = "copilot",
  --    providers = {
  --      claude = {
  --        endpoint = "https://api.anthropic.com",
  --        model = "claude-sonnet-4-20250514",
  --        timeout = 30000, -- Timeout in milliseconds
  --        extra_request_body = {
  --          temperature = 0.75,
  --          max_tokens = 20480,
  --        },
  --      },
  --    },
  --  },
  --  dependencies = {
  --    "nvim-treesitter/nvim-treesitter",
  --    "nvim-lua/plenary.nvim",
  --    "MunifTanjim/nui.nvim",
  --    --- The below dependencies are optional,
  --    "echasnovski/mini.pick", -- for file_selector provider mini.pick
  --    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
  --    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
  --    "ibhagwan/fzf-lua", -- for file_selector provider fzf
  --    "stevearc/dressing.nvim", -- for input provider dressing
  --    "folke/snacks.nvim", -- for input provider snacks
  --    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  --    "zbirenbaum/copilot.lua", -- for providers='copilot'
  --    {
  --      -- support for image pasting
  --      "HakonHarnes/img-clip.nvim",
  --      event = "VeryLazy",
  --      opts = {
  --        -- recommended settings
  --        default = {
  --          embed_image_as_base64 = false,
  --          prompt_for_file_name = false,
  --          drag_and_drop = {
  --            insert_mode = true,
  --          },
  --          -- required for Windows users
  --          use_absolute_path = true,
  --        },
  --      },
  --    },
  --    {
  --      -- Make sure to set this up properly if you have lazy=true
  --      "MeanderingProgrammer/render-markdown.nvim",
  --      opts = {
  --        file_types = { "markdown", "Avante" },
  --      },
  --      ft = { "markdown", "Avante" },
  --    },
  --  },
  --},
}
