local installer = require('nvim-lsp-installer')

local servers = require('lsp/servers')

for _, name in pairs(servers) do
  local found, server = installer.get_server(name)
  if found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end
