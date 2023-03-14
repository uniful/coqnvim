return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = {"BufRead","BufNewFile"},
        config = function ()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    -- Diagnostics
                    null_ls.builtins.diagnostics.eslint,  --javascript,javascriptact,typescript,typescriptact,vue
                    null_ls.builtins.diagnostics.luacheck,  --lua
                    null_ls.builtins.diagnostics.markdownlint,  --markdown
                    null_ls.builtins.diagnostics.pylint,  --python
                    null_ls.builtins.diagnostics.tidy,  --html,xml
                    null_ls.builtins.diagnostics.yamllint,  --yaml
                    null_ls.builtins.diagnostics.zsh, --zsh
                    -- Formatting
                    null_ls.builtins.formatting.eslint, --javascript,javascriptact,typescript,typescriptact,vue,
                    null_ls.builtins.formatting.jq,  --json
                    null_ls.builtins.formatting.markdownlint, --markdown
                    null_ls.builtins.formatting.shellharden,  --sh
                    null_ls.builtins.formatting.stylua,  --lua,luau
                    null_ls.builtins.formatting.tidy,  --html,xml
                },
                debug = true,
                diagnostics_format = "[#{c}] #{m} (#{s})",
            })
        end
    }
}
