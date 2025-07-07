return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    lazy = false,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function()
      local theme = "hyper"
      local logo = {
        [[                 (             )                                  ]],
        [[                 `--(_   _)--'                                    ]],
        [[                     y-y                                          ]],
        [[                     /@@ \                                        ]],
        [[                     /     \                                      ]],
        [[                     `--'.  \             ,                       ]],
        [[                         |   `.__________/)                       ]],
        [[     ██████╗ ██╗  ██╗    ██████╗ ███████╗███████╗██████╗          ]],
        [[    ██╔═══██╗██║  ██║    ██╔══██╗██╔════╝██╔════╝██╔══██╗         ]],
        [[    ██║   ██║███████║    ██║  ██║█████╗  █████╗  ██████╔╝         ]],
        [[    ██║   ██║██╔══██║    ██║  ██║██╔══╝  ██╔══╝  ██╔══██╗         ]],
        [[    ╚██████╔╝██║  ██║    ██████╔╝███████╗███████╗██║  ██║██╗██╗██╗]],
        [[     ╚═════╝ ╚═╝  ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝╚═╝]],
        [[]],
      }

      if theme == "doom" then
        for _ = 1, 3 do
          table.insert(logo, 1, "")
        end
        table.insert(logo, "")
      end

      local footer = {
        [[]],
        [[💊 Sản phẩm này không phải là thuốc]],
        [[và không có tác dụng thay thế thuốc chữa bệnh]],
      }

      local center = {
        {
          action = "lua LazyVim.pick()()",
          desc = " Find File                                    ",
          icon = " ",
          key = "f",
        },
        {
          action = "ene | startinsert",
          desc = " New File",
          icon = " ",
          key = "n",
        },
        {
          action = 'lua LazyVim.pick("oldfiles")()',
          desc = " Recent Files",
          icon = " ",
          key = "r",
        },
        {
          action = "lua LazyVim.pick.config_files()()",
          desc = " Config",
          icon = " ",
          key = "c",
        },
        {
          action = 'lua require("persistence").load()',
          desc = " Restore Session",
          icon = " ",
          key = "s",
        },
        {
          action = 'lua require("persistence").select()',
          desc = " Select Session",
          icon = " ",
          key = "S",
        },
        {
          action = function()
            vim.api.nvim_input("<cmd>qa<cr>")
          end,
          desc = " Quit",
          icon = " ",
          key = "q",
        },
      }

      local shortcut = {
        {
          icon = " ",
          -- icon_hl = "@variable",
          desc = "Restore Session",
          group = "Label",
          action = function()
            require("persistence").load()
          end,
          key = "s",
        },
        {
          icon = " ",
          desc = "Select Session",
          group = "DiagnosticHint",
          action = function()
            require("persistence").select()
          end,
          key = "S",
        },
        {
          desc = " Configs",
          group = "Number",
          action = function()
            Snacks.picker.files({ cwd = "~/.config/nvim" })
          end,
          key = "c",
        },
        { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
        -- {
        --   desc = " Exit",
        --   group = "DiagnosticHint",
        --   action = ":qa",
        --   key = "q",
        -- },
      }

      local config = {
        header = logo,
        packages = { enable = false },
        project = {
          enable = true,
          limit = 5,
        },
        mru = {
          enable = true,
          limit = 5,
        },
        shortcut = shortcut,
        center = center,
        footer = footer,
      }

      require("dashboard").setup({
        theme = theme,
        config = config,
        shortcut_type = "number",
        hide = {
          statusline = false,
        },
      })
    end,
  },
}

-- return {
--   {
--     "folke/snacks.nvim",
--     lazy = false,
--     event = "VimEnter",
--     ---@type snacks.Config
--     opts = {
--       dashboard = {
--         preset = {
--           -- pick = function(cmd, opts)
--           --   return LazyVim.pick(cmd, opts)()
--           -- end,
--           pick = nil,
--           header = {
--             [[                 (             )                                  ]],
--             [[                 `--(_   _)--'                                    ]],
--             [[                     y-y                                          ]],
--             [[                     /@@ \                                        ]],
--             [[                     /     \                                      ]],
--             [[                     `--'.  \             ,                       ]],
--             [[                         |   `.__________/)                       ]],
--             [[     ██████╗ ██╗  ██╗    ██████╗ ███████╗███████╗██████╗          ]],
--             [[    ██╔═══██╗██║  ██║    ██╔══██╗██╔════╝██╔════╝██╔══██╗         ]],
--             [[    ██║   ██║███████║    ██║  ██║█████╗  █████╗  ██████╔╝         ]],
--             [[    ██║   ██║██╔══██║    ██║  ██║██╔══╝  ██╔══╝  ██╔══██╗         ]],
--             [[    ╚██████╔╝██║  ██║    ██████╔╝███████╗███████╗██║  ██║██╗██╗██╗]],
--             [[     ╚═════╝ ╚═╝  ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝╚═╝]],
--           },
--           ---@type snacks.dashboard.Item[]
--           keys = {
--             { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
--             { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
--             { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
--             { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
--             {
--               icon = " ",
--               key = "c",
--               desc = "Config",
--               action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
--             },
--             { icon = " ", key = "s", desc = "Restore Session", section = "session" },
--             { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
--             { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
--             { icon = " ", key = "q", desc = "Quit", action = ":qa" },
--           },
--           -- sections = {
--           --   { section = "header" },
--           --   { section = "keys", gap = 1, padding = 1 },
--           --   { section = "startup" },
--           -- },
--         },
--       },
--     },
--   },
-- }
