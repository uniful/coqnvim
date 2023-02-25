return {
    -- 灯泡提示代码行为
    {
        "kosayoda/nvim-lightbulb",
        event = {"BufRead","BufNewFile"},
        opts = {
            autocmd = {enabled = true}
        }
    },
     -- 为不支持 LSP 高亮的主题提供默认高亮方案
    {
        "folke/lsp-colors.nvim",
        event = "VeryLazy",
        -- 当主题不支持 LSP 高亮时，将采用以下默认方案
        opts = {
            Error = "#db4b4b",
            Warning = "#e0af68",
            Information = "#0db9d7",
            Hint = "#10B981",
        }
    },
    -- 为补全添加图标
    {
        "onsails/lspkind.nvim",
        event = "VeryLazy",
        config = function ()
            require('lspkind').init({
                mode = 'symbol_text',
                preset = 'codicons',
                symbol_map = {
                  Text = "",
                  Method = "",
                  Function = "",
                  Constructor = "",
                  Field = "ﰠ",
                  Variable = "",
                  Class = "ﴯ",
                  Interface = "",
                  Module = "",
                  Property = "ﰠ",
                  Unit = "塞",
                  Value = "",
                  Enum = "",
                  Keyword = "",
                  Snippet = "",
                  Color = "",
                  File = "",
                  Reference = "",
                  Folder = "",
                  EnumMember = "",
                  Constant = "",
                  Struct = "פּ",
                  Event = "",
                  Operator = "",
                  TypeParameter = ""
                },
            })
        end
    },
     -- LSP UI 美化
    {
        "glepnir/lspsaga.nvim",
        cmd = "Lspsaga",
        opts = {}
    },
    --显示代码诊断, 参考, telescope结果, quickfix和位置列表
    {
        "folke/trouble.nvim",
        cmd = {"TroubleToggle","Trouble"},
        opts = {
            position = "bottom",
            height = 10,
            width = 50,
            mode = "workspace_diagnostics",
            action_keys = {
                close = "q",
                cancel = "<esc>",
                refresh = "r",
                jump = {"<cr>", "<tab>"},
                open_split = { "<c-x>" },
                open_vsplit = { "<c-l>" },
                open_tab = { "<c-t>" },
                jump_close = {"o"},
                toggle_mode = "m",
                toggle_preview = "P",
                hover = "K",
                preview = "p",
                close_folds = {"zM", "zm"},
                open_folds = {"zR", "zr"},
                toggle_fold = {"zA", "za"},
                previous = "k",
                next = "j"
            },
            signs = {
                error = "",
                warning = "",
                hint = "",
                information = "",
                other = "﫠"
            },
            use_diagnostic_signs = true
        }
    },
    -- LSP 进度提示
    {
        "j-hui/fidget.nvim",
        event = {"BufRead","BufNewFile"},
        config = true
    }
}
