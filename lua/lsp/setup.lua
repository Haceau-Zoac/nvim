local servers = require('lsp/servers')

for _, name in pairs(servers) do
  require 'lspconfig'[name].setup {}
end
