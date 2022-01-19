local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require 'lspconfig'.clangd.setup {
--capabilities = capabilities,
--filetypes = { "c", "cpp", "objc", "objcpp", "cc", "mpp", "ixx" },
}
