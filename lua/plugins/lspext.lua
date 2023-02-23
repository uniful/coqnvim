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
    -- 使用lsp的视图符号
    {
        "simrat39/symbols-outline.nvim",
        cmd = {"SymbolsOutline","SymbolsOutlineOpen","SymbolsOutlineClose"},
        config = function ()
            local opts = {
                highlight_hovered_item = true,
                show_guides = true,
                auto_preview = false,
                position = 'right',
                relative_width = true,
                width = 25,
                auto_close = false,
                show_numbers = false,
                show_relative_numbers = false,
                show_symbol_details = true,
                preview_bg_highlight = 'Pmenu',
                autofold_depth = nil,
                auto_unfold_hover = true,
                fold_markers = { '', '' },
                wrap = false,
                keymaps = { -- These keymaps can be a string or a table for multiple keys
                    close = {"<Esc>", "q"},
                    goto_location = "<Cr>",
                    focus_location = "o",
                    hover_symbol = "<C-space>",
                    toggle_preview = "K",
                    rename_symbol = "r",
                    code_actions = "a",
                    fold = "h",
                    unfold = "l",
                    fold_all = "W",
                    unfold_all = "E",
                    fold_reset = "R",
                },
                lsp_blacklist = {},
                symbol_blacklist = {},
                symbols = {
                    File = { icon = "", hl = "@text.uri" },
                    Module = { icon = "", hl = "@namespace" },
                    Namespace = { icon = "", hl = "@namespace" },
                    Package = { icon = "", hl = "@namespace" },
                    Class = { icon = "𝓒", hl = "@type" },
                    Method = { icon = "ƒ", hl = "@method" },
                    Property = { icon = "", hl = "@method" },
                    Field = { icon = "", hl = "@field" },
                    Constructor = { icon = "", hl = "@constructor" },
                    Enum = { icon = "ℰ", hl = "@type" },
                    Interface = { icon = "ﰮ", hl = "@type" },
                    Function = { icon = "", hl = "@function" },
                    Variable = { icon = "", hl = "@constant" },
                    Constant = { icon = "", hl = "@constant" },
                    String = { icon = "𝓐", hl = "@string" },
                    Number = { icon = "#", hl = "@number" },
                    Boolean = { icon = "⊨", hl = "@boolean" },
                    Array = { icon = "", hl = "@constant" },
                    Object = { icon = "⦿", hl = "@type" },
                    Key = { icon = "🔐", hl = "@type" },
                    Null = { icon = "NULL", hl = "@type" },
                    EnumMember = { icon = "", hl = "@field" },
                    Struct = { icon = "𝓢", hl = "@type" },
                    Event = { icon = "🗲", hl = "@type" },
                    Operator = { icon = "+", hl = "@operator" },
                    TypeParameter = { icon = "𝙏", hl = "@parameter" },
                    Component = { icon = "", hl = "@function" },
                    Fragment = { icon = "", hl = "@constant" },
                }
            }
            require("symbols-outline").setup(opts)
        end
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
