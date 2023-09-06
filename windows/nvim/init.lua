require('paarth.base')
require('paarth.highlights')
require('paarth.maps')
require('paarth.plugins')

local has = vim.fn.has
local is_win = has "win32"

if is_win == 1 then
  require('paarth.windows')
end
