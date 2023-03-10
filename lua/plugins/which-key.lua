return {
    -- 显示一个弹出窗口，其中包含您开始输入的命令的可能键绑定
    {
        "folke/which-key.nvim",
        lazy = true,
        event = "VeryLazy",
        opts = {
            plugins = {
                spelling = {
                    enabled = true
                }
            }
        }
    }
}
