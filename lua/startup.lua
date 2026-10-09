-- Run on  startup

vim.g.coq_settings = { auto_start = "shut-up" }
local coq = require("coq")
vim.cmd([[COQnow]])
vim.cmd([[colorscheme koehler]])


require("conform").setup({
  formatters_by_ft = {
    markdown = { "prettier" },
    lua = { "stylua" },
    python = { "isort", "black" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    cuda = { "clang_format" },
    tex = { "latexindent" },
    bibtex = { "bibtex-tidy" },
    cmake = { "cmake_format" },
  },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

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

