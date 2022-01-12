local lsp_installer = require 'nvim-lsp-installer'

local servers = {
  'sumneko_lua',
  'clangd',
}

for _, name in pairs(servers) do
  local found, server = lsp_installer.get_server(name)
  if found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

