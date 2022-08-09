local server_defaults = {
    capabilities = require('cmp_nvim_lsp').update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    ),
    on_attach = function(client, bufnr)
        vim.api.nvim_exec_autocmds('User', {pattern = 'LspAttached'})
    end
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
    'force',
    lspconfig.util.default_config,
    server_defaults
)

lspconfig.sumneko_lua.setup({})
lspconfig.clangd.setup({})
lspconfig.pyright.setup({})

--require('lspconfig')['pyright'].setup{
--}
--require('lspconfig')['clangd'].setup{
--}
--require('lspconfig')['sumneko_lua'].setup{
--}
