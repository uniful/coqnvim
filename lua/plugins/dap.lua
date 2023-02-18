return {
     -- 代码调试基础插件
    {
        "mfussenegger/nvim-dap",
        config = function ()
            require("debugger.dap-config").setup()
        end
    }
}
