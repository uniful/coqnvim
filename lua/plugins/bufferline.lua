return {
    -- 支持 LSP 状态的 buffer 栏
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        version = "v3.*",
        opts = {
            options = {
                -- 为每个 buffer 都配置一个序数
                numbers = "ordinal",
                -- 使用内置 LSP 进行诊断
                diagnostics = "nvim_lsp",
                -- 分割符样式："slant" | "thick" | "thin"
                -- 如果是透明背景，不推荐使用 slant
                separator_style = "thin",
                -- 显示 LSP 报错图标
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " " or (e == "warning" and " " or "")
                        s = s .. n .. sym
                    end
                    return s
                end,
                offset = {
                    {
                        filetype = "neo-tree",
                        text = "Neo-tree",
                        highlight = "Directory",
                        "text_align",
                    }
                }
            }
        }
    }
}
