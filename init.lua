local vim = vim
-- remove
vim.call('has', 'nvim-0.5')
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('https://github.com/apple/pkl-neovim.git')
Plug('nvim-treesitter/nvim-treesitter',{['do'] = function() vim.call(':TSUpdate') end})

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
--                                    , {tag= '0.1.4' })
--                                    , { 'branch': '0.1.x' }
Plug('BurntSushi/ripgrep')

Plug 'junegunn/vim-easy-align'
-- Hur fungerar easy align?" 

Plug('ms-jpq/coq_nvim', {branch= 'coq', auto_start= 'silent'})
Plug('ms-jpq/coq.artifacts', {branch= 'artifacts'})
Plug('ms-jpq/coq.thirdparty', {branch= '3p'})

-- Using a non-default branch
-- Am I using this?
Plug('rdnetto/YCM-Generator', {branch= 'stable' })

-- Plugin outside ~/.vim/plugged with post-update hook
Plug('junegunn/fzf', {
  ['do'] = function()
    vim.call('fzf#install')
  end
})

-- Futhark
-- Plug 'BeneCollyridam/futhark-vim' -- Original 
Plug 'jonesz/futhark-vim'            -- With def

-- Goyo reader
Plug 'junegunn/goyo.vim'

-- Time to learn 
Plug 'kenn7/vim-arsync'

-- Initialize plugin system
-- Automatically executes `filetype plugin indent on` and `syntax enable`.
vim.call('plug#end')

vim.g.coq_settings = { auto_start = "shut-up" }
local coq = require("coq")

require("options")
require("keymaps")

-- TO DO: 
-- require("COQnow") 
vim.cmd([[COQnow]])

-- Temp solution

