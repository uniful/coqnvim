return {
    -- 自动保存
    {
        "Pocco81/auto-save.nvim",
        event = {"BufReadPre","BufNewFile"},
        opts = {}
    },
    -- 自动匹配括号
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },
    -- 自动恢复光标位置
    {
        "ethanholz/nvim-lastplace",
        event = "BufReadPre",
        opts = {
            --这些 buffer 类型不记录光标位置
            lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
            -- 这些文件类型不记录光标位置
            lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
            lastplace_open_folds = true
        }
    }
}
