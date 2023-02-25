return {
    -- 用于在编辑会话期间保留和切换多个终端
    {
        "akinsho/toggleterm.nvim",
        version = '*',
        event = "VeryLazy",
        config = function()
            -- 自定义终端
            local Terminal  = require('toggleterm.terminal').Terminal

            local lazygit = Terminal:new({
                cmd = "lazygit",
                hidden = true
            })
            function _lazygit_toggle()
                lazygit:toggle()
            end
            -- 终端启动调用
            require("toggleterm").setup({
                persist_size = false,
                direction = "float"
            })
        end
    }
}
