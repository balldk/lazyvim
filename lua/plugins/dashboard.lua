-- if true then
--   return {}
-- end

return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function()
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

      local footer = {
        [[]],
        [[💊 Sản phẩm này không phải là thuốc và không có tác dụng thay thế thuốc chữa bệnh]],
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
        shortcut = {
          { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
          {
            icon = " ",
            icon_hl = "@variable",
            desc = "Files",
            group = "Label",
            action = "Telescope find_files",
            key = "f",
          },
          {
            desc = " Apps",
            group = "DiagnosticHint",
            action = "Telescope app",
            key = "a",
          },
          {
            desc = " dotfiles",
            group = "Number",
            action = "Telescope dotfiles",
            key = "d",
          },
        },
        footer = footer,
      }

      require("dashboard").setup({
        theme = "hyper",
        config = config,
        hide = {
          statusline = false,
        },
      })
    end,
  },
}
