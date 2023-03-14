return {
    -- 炫酷的状态栏插件
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = "nvim-web-devicons",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "onedark",
                    globalstatus = true,
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {'filename'},
                    lualine_x = {
                        {'encoding', 'fileformat', 'filetype'},
                        {
                            require("lazy.status").updates,
                            cond = require("lazy.status").has_updates,
                            color = { fg = "#ff9e64" },
                        },
                    },
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                }
            })
        end
    }
}
