return {
	-- LSP 基础服务
	{
		"neovim/nvim-lspconfig",
        event = {"BufReadPost","BufNewFile"},
        config = function()
            local lspconfig = require('lspconfig')
            vim.g.coq_settings = {auto_start = true}
            local servers = { 'clangd', 'tsserver', 'pyright','cmake','vimls',
                'lua_ls','jsonls','yamlls','html',"cssls","zk","taplo","bashls"}
            for _, lsp in pairs(servers) do
                lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({}))
            end
        end
	}
}
