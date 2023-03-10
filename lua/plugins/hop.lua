return {
    -- 快速跳转
    {
        "phaazon/hop.nvim",
        lazy = true,
        cmd = {"HopWord","HopLine","HopLineStart","HopChar1","HopChar2",
            "HopPattern","HopAnyWhere","HopVertical"},
        branch = 'v2',
        opts = {}
    }
}
