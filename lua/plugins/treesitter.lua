return {
    -- 语法高亮
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = true,
        event = {"BufReadPre","BufNewFile"},
        dependencies = {
            {"nvim-treesitter/nvim-treesitter-textobjects",lazy = true},
            {"JoosepAlviste/nvim-ts-context-commentstring",lazy = true},
            {"mrjones2014/nvim-ts-rainbow",lazy =true},
            {
                "nvim-treesitter/nvim-treesitter-context", lazy = true,
                opts = {}
            }
        },
        build = {":TSUpdate"},
        config = function()
            require("nvim-treesitter.configs").setup({
                -- 安装的高亮支持来源
                -- ensure_installed = "maintained",
                -- 同步下载高亮支持
                sync_install = true,
                ensure_installed = { "c","cpp","python","lua","vim","cmake","bash","yaml","markdown","css","html","json","javascript","typescript"},
                ignore_install = { }, -- parsers to not install
                auto_install = false,
                -- 高亮相关
                highlight = {
                    -- 启用高亮支持
                    enable = true,
                    -- 使用 treesitter 高亮而不是 neovim 内置的高亮
                    additional_vim_regex_highlighting = false
                },
                -- 范围选择
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        -- 初始化选择
                        init_selection = "<CR>",
                        -- 递增
                        node_incremental = "<CR>",
                        -- 递减
                        node_decremental = "<BS>",
                        -- 选择一个范围
                        scope_incremental = "<TAB>"
                    }
                },
                -- 缩进(实验性功能，默认关闭)
                indent = {
                    enable = true
                },
                -- 彩虹括号，由 nvim-ts-rainbow 插件提供
                rainbow = {
                    enable = true,
                    extended_mode = true,
                    -- colors = {}, -- table of hex strings
                    -- termcolors = {} -- table of colour name strings
                    max_file_lines = nil
                },
                -- 根据当前上下文定义文件类型，由 nvim-ts-context-commentstring 插件提供
                context_commentstring = {
                    enable = true
                },
                -- textobjects
                textobjects = {
                    select = {
                        enable = true,

                        -- Automatically jump forward to textobj, similar to targets.vim
                        lookahead = true,

                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                        },
                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'V', -- linewise
                            ['@class.outer'] = '<m-v>', -- blockwise
                        },
                        include_surrounding_whitespace = true,
                    },
                    swap = {
                        enable = true,
                        swap_next = {
                            ["<leader>a"] = "@parameter.inner",
                        },
                        swap_previous = {
                            ["<leader>A"] = "@parameter.inner",
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true,
                        goto_next_start = {
                            ["]m"] = "@function.outer",
                            ["]]"] = { query = "@class.outer", desc = "Next class start" },
                            ["]o"] = "@loop.*",
                            ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
                            ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
                        },
                        goto_next_end = {
                            ["]M"] = "@function.outer",
                            ["]["] = "@class.outer",
                        },
                        goto_previous_start = {
                            ["[m"] = "@function.outer",
                            ["[["] = "@class.outer",
                        },
                        goto_previous_end = {
                            ["[M"] = "@function.outer",
                            ["[]"] = "@class.outer",
                        },
                        goto_next = {
                            ["]d"] = "@conditional.outer",
                        },
                        goto_previous = {
                            ["[d"] = "@conditional.outer",
                        }
                    },
                    lsp_interop = {
                        enable = true,
                        border = 'none',
                        floating_preview_opts = {},
                        peek_definition_code = {
                            ["<leader>df"] = "@function.outer",
                            ["<leader>dF"] = "@class.outer",
                        }
                    }
                }
            })
        end
    }
}
