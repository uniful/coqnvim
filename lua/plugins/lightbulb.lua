return {
    -- 灯泡提示代码行为
    {
        "kosayoda/nvim-lightbulb",
        event = {"BufRead","BufNewFile"},
        opts = {
            autocmd = {enabled = true}
        }
    }
}
