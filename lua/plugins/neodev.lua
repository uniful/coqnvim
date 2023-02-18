return {
    -- 带有nvim lua API的完整签名帮助、文档和完成
    {
        "folke/neodev.nvim",
        opts = {
            library = {
                plugins = {
                    "nvim-dap-ui",
                    "nvim-treesitter",
                    "plenary.nvim",
                    "telescope.nvim",
                },
                type = true,
            }
        }
    }
}
