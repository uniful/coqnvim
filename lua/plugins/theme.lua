return {
    {
        "sainnhe/everforest",
        config = function ()
            vim.g.everforest_background = hard
            vim.g.everforest_disable_italic_comment = 1
            vim.cmd("colorscheme everforest")
        end
    }
}