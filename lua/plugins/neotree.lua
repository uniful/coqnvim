return {
    -- 文件目录树
    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = true,
        cmd = "Neotree",
        init = function ()
            vim.g.neo_tree_remove_legacy_commands = 1
        end,
        opts = {}
    }
}
