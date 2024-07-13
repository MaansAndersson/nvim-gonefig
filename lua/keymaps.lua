-- Should be moved to keymaps 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- open new Telescope + find file 

-- Should add require etc. for Goyo, Oil, and fzf. 
vim.keymap.set('n', '<leader>gg', function() vim.cmd([[Goyo]]) end, {})
vim.keymap.set('n', '<leader>oo', function() vim.cmd([[Oil]]) end, {})
vim.keymap.set('n', '<leader>fz', function() vim.cmd([[FZF]]) end, {})

-- Check spelling in English

vim.keymap.set('n', '<leader>se', function() vim.cmd([[set spell spelllang=en_gb]]) end, {})

-- Show tabs



