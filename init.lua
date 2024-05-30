local vim = vim
-- remove
vim.call('has', 'nvim-0.5')
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('https://github.com/apple/pkl-neovim.git')
Plug('nvim-treesitter/nvim-treesitter',{['do'] = function() vim.call(':TSUpdate') end})
Plug('honza/vim-snippets')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
--                                    , {tag= '0.1.4' })
--                                    , { 'branch': '0.1.x' }
Plug('BurntSushi/ripgrep')
Plug 'stevearc/oil.nvim'
--Plug('stevearc/oiln.nvim')
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
Plug 'prabirshrestha/async.vim'

-- Initialize plugin system
-- Automatically executes `filetype plugin indent on` and `syntax enable`.
vim.call('plug#end')

vim.g.coq_settings = { auto_start = "shut-up" }
local coq = require("coq")
vim.cmd([[COQnow]])
vim.cmd([[set spell spelllang=en_gb]])
require("options")
require("keymaps")


--" The below is required for enabling the tree-sitter syntax engine, which is used by pkl-neovim.
--lua <<EOF
local hasConfigs, configs = pcall(require, "nvim-treesitter.configs")
if hasConfigs then
  configs.setup {
    ensure_installed = "pkl",
    highlight = {
      enable = true,              -- false will disable the whole extension
    },
    indent = {
      enable = true
    }
  }
end
--EOF


-- TO DO: 
-- require("COQnow") 

-- Temp solution

