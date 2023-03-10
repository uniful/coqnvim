return {
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function ()
            require("onedark").setup({
                style = "cool",
                ending_tildes = true,
                code_style = {
                    comments = "italic",
                    keywords = "bold,italic",
                    functions = "bold"
                }
            })
            require("onedark").load()
        end
    }
}
