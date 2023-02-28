return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = "BufRead",
        config = function ()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    -- Diagnostics
                    null_ls.builtins.diagnostics.cmake_lint,  --cmake
                    null_ls.builtins.diagnostics.eslint,  --javascript,javascriptact,typescript,typescriptact,vue
                    null_ls.builtins.diagnostics.fish,  --fish
                    null_ls.builtins.diagnostics.luacheck,  --lua
                    null_ls.builtins.diagnostics.markdownlint,  --markdown
                    null_ls.builtins.diagnostics.pylint,  --python
                    null_ls.builtins.diagnostics.shellcheck,  --sh
                    null_ls.builtins.diagnostics.tidy,  --html,xml
                    null_ls.builtins.diagnostics.yamllint,  --yaml
                    null_ls.builtins.diagnostics.zsh, --zsh
                    null_ls.builtins.diagnostics.cspell.with({
                         disabled_filetypes = {"c","cpp","cmake","javascript","typescript","fish","json",
                        "markdown","sh","lua","toml","html","xml","python","yaml","zsh"}
                    }),
                    -- Formatting
                    null_ls.builtins.formatting.cmake_format, --cmake
                    null_ls.builtins.formatting.eslint, --javascript,javascriptact,typescript,typescriptact,vue,
                    null_ls.builtins.formatting.fish_indent, --fish
                    null_ls.builtins.formatting.jq,  --json
                    null_ls.builtins.formatting.markdownlint, --markdown
                    null_ls.builtins.formatting.shellharden,  --sh
                    null_ls.builtins.formatting.stylua,  --lua,luau
                    null_ls.builtins.formatting.taplo,  --toml
                    null_ls.builtins.formatting.tidy,  --html,xml
                    null_ls.builtins.formatting.yapf,  --python
                    null_ls.builtins.formatting.codespell.with({
                        disabled_filetypes = {"c","cpp","cmake","javascript","typescript","fish","json",
                        "markdown","sh","lua","toml","html","xml","python"}
                    })  --{}
                    -- Hover
                },
                debug = true,
                diagnostics_format = "[#{c}] #{m} (#{s})",
            })
        end
    }
}
