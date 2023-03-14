return {
    -- 非活动代码变暗
    {
        "folke/twilight.nvim",
        cmd = {"Twilight","TwilightEnable","TwilightDisable"},
        opts = {}
    },
    -- 禅模式
    {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        opts = {}
    },
    -- 正则表达式解释器
    {
        "bennypowers/nvim-regexplainer",
        event = "BufRead",
        opts = {}
    }
}
