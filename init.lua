local vim = vim
vim.call('has', 'nvim-0.5')
local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- The default plugin directory will be as follows:
--   - Vim (Linux/macOS): '~/.vim/plugged'
--   - Vim (Windows): '~/vimfiles/plugged'
--   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
-- You can specify a custom plugin directory by passing it as the argument
--   - e.g. `call plug#begin('~/.vim/plugged')`
--   - Avoid using standard Vim directory names like 'plugin'

-- Make sure you use single quotes
--Plug('nvim-treesitter/nvim-treesitter') --, {do=':TSUpdate'})
Plug('https://github.com/apple/pkl-neovim.git')
Plug('nvim-treesitter/nvim-treesitter',{['do'] = function()
    vim.call(':TSUpdate')
end})

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
--                                    , {tag= '0.1.4' })
--or                                , { 'branch': '0.1.x' }
Plug('BurntSushi/ripgrep')

Plug 'junegunn/vim-easy-align'
-- Hur fungerar easy align?" 

-- On-demand loading
-- Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
-- Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

-- main one
Plug('ms-jpq/coq_nvim', {branch= 'coq', auto_start= 'silent'})
Plug('ms-jpq/coq.artifacts', {branch= 'artifacts'})

-- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
-- Need to **configure separately**

Plug('ms-jpq/coq.thirdparty', {branch= '3p'})
-- shell repl
-- nvim lua api
-- scientific calculator
-- comment banner
-- etc

-- Using a non-default branch
-- Am I using this?
Plug('rdnetto/YCM-Generator', {branch= 'stable' })

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
-- Plug('fatih/vim-go', { tag= '*' })

-- Plugin outside ~/.vim/plugged with post-update hook
Plug('junegunn/fzf', {
  ['do'] = function()
    vim.call('fzf#install')
  end
})

-- Futhark
-- Plug 'BeneCollyridam/futhark-vim'
-- Fix for def 
Plug 'jonesz/futhark-vim' 

-- Goyo reader
Plug 'junegunn/goyo.vim'

-- Time to learn 
Plug 'kenn7/vim-arsync'

-- Initialize plugin system
-- Automatically executes `filetype plugin indent on` and `syntax enable`.
vim.call('plug#end')

vim.g.coq_settings = { auto_start = "shut-up" }
local coq = require("coq")

-- TO DO: 
require("options")
require("keymaps")

-- Should be moved to keymaps 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.cmd([[COQnow]])

-- Temp solution

