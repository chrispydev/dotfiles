require('chrispydev.base')
require('chrispydev.highlights')
require('chrispydev.maps')
require('chrispydev.plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_linux = has "linux"
local is_win = has "win32"

if is_mac then
  require('chrispydev.macos')
end
if is_linux then
  require('chrispydev.linux')
end
if is_win then
  require('chrispydev.windows')
end
