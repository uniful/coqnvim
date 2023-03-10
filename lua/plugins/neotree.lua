return {
    -- 文件目录树
    {
        "nvim-neo-tree/neo-tree.nvim",
        cmd = "Neotree",
        config = function()
            vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
            require("neo-tree").setup()
            vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
        end
    }
}
