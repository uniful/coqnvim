return {
    -- 文件目录树
    {
        "nvim-neo-tree/neo-tree.nvim",
        cmd = "Neotree",
        config = function()
            -- Unless you are still migrating, remove the deprecated commands from v1.x
            vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
            require("neo-tree").setup()
            vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
        end
    }
}
