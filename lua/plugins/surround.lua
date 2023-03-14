return {
    -- 包裹修改
    {
        "kylechui/nvim-surround",
        version = "*",
        lazy = true,
        keys = {
            {"ys",mode = {"n","x"},desc = "Add surround"},
            {"ds",mode = {"n","x"},desc = "Delete surround"},
            {"cs",mode = {"n","x"},desc = "change quotes"},
        },
        config = true
    }
}
