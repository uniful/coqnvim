return {
    -- 状态栏显示git信息
    {
        "lewis6991/gitsigns.nvim",
        event = "BufReadPre",
        config = function()
            require("gitsigns").setup()
            require("scrollbar.handlers.gitsigns").setup()
        end
    }
}

