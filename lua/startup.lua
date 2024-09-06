-- Run on  startup

vim.g.coq_settings = { auto_start = "shut-up" }
local coq = require("coq")
vim.cmd([[COQnow]])
vim.cmd([[colorscheme koehler]])

--function os.capture(cmd, raw)
--  local f = assert(io.popen(cmd, 'r'))
--  local s = assert(f:read('*a'))
--  f:close()
--  if raw then return s end
--  s = string.gsub(s, '^%s+', '')
--  s = string.gsub(s, '%s+$', '')
--  s = string.gsub(s, '[\n\r]+', ' ')
--  return s
--end
