return {
    -- 文本字符替换
    {
        "nvim-pack/nvim-spectre",
        lazy = true,
        keys = {
            {"<leader>so","<cmd>lua require('spectre').open()<CR>",desc = "Open Spectre"},
            {"<leader>sw","<cmd>lua require('spectre').open_visual({select_word=true})<CR>",desc = "Open Visual Select Word"},
            {"<leader>sf","viw:lua require('spectre').open_file_search()<CR>",desc = "Open File Search"},
            vim.keymap.set("v","<leader>sh","<esc>:lua require('spectre').open_visual()<CR>",{desc = "Open Visual"})
        },
        config = function ()
            require("spectre").setup({
                mapping = {
                    ['toggle_line'] = {
                        map = "<leader>sd",
                    },
                    ['enter_file'] = {
                        map = "<leader>sg",
                    },
                    ["send_to_qf"] = {
                        map = "<leader>sq",
                    },
                    ['replace_cmd'] = {
                        map = "<leader>sn",
                    },
                    ['show_option_menu'] = {
                        map = "<leader>sm",
                    },
                    ['run_current_replace'] = {
                        map = "<leader>sc",
                    },
                    ['run_replace'] = {
                        map = "<leader>sa",
                    },
                    ['change_view_mode'] = {
                    map = "<leader>sv",
                    },
                    ['change_replace_sed'] = {
                        map = "ss",
                    },
                    ['change_replace_oxi'] = {
                        map = "<leader>sx",
                    },
                    ['toggle_live_update']={
                        map = "<leader>su",
                    },
                    ['toggle_ignore_case'] = {
                        map = "<leader>si",
                    },
                    ['toggle_ignore_hidden'] = {
                        map = "<leader>se",
                    },
                    ['resume_last_search'] = {
                        map = "<leader>sb",
                    },
                }
            })
        end
    }
}
