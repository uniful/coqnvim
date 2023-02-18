return {
     -- 为不支持 LSP 高亮的主题提供默认高亮方案
     {
        "folke/lsp-colors.nvim",
        -- 当主题不支持 LSP 高亮时，将采用以下默认方案
        opts = {
            Error = "#db4b4b",
            Warning = "#e0af68",
            Information = "#0db9d7",
            Hint = "#10B981",
        }
    }
}
