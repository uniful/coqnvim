return {
   -- 模糊查找
   {
    "nvim-telescope/telescope.nvim",
    branch='0.1.x',
    cmd = "Telescope",
    dependencies = {
        {"nvim-telescope/telescope-ui-select.nvim",lazy = true}, --neovim核心内容可以填充到telescope
        {"nvim-telescope/telescope-file-browser.nvim",lazy = true}, --支持的文件和文件夹的同步创建、删除、重命名和移动
        {"nvim-telescope/telescope-frecency.nvim",lazy = true}, --在编辑历史中选择文件时提供智能优先级排序(以频率和新近度排序)
    },
    config = function()
        local actions = require("telescope.actions")
        local trouble = require("trouble.providers.telescope")
        local telescope = require("telescope")
        require('telescope').setup{
            defaults = {
                mappings = {
                    i = {
                        ["<C-h>"] = "which_key",
                        ["<c-t>"] = trouble.open_with_trouble,
                    },
                    n = {["<c-t>"] = trouble.open_with_trouble },
                }
            },
            pickers = {},
            extensions = {
                file_browser = {
                    theme = "ivy",
                    mappings = {
                        ["i"] = {},
                        ["n"] = {},
                    },
                },
                undo = {
                    side_by_size = true,
                    layout_strategy = "vertical",
                    layout_config = {
                        preview_height = 0.8,
                    }
                },
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {}
                }
            }
        }
        require("telescope").load_extension("ui-select")
        require("telescope").load_extension("notify")
        require("telescope").load_extension('file_browser')
        require("telescope").load_extension("frecency")
        require('telescope').load_extension("projects")
    end
  }
}
