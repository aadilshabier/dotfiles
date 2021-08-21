--vim.cmd [[packadd packer.nvim]]

packer = require("packer").startup(function(use)
	-- Manage itself
	use 'wbthomason/packer.nvim'

	use 'neovim/nvim-lspconfig'

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	use {
    	'kyazdani42/nvim-tree.lua',
    	requires = {'kyazdani42/nvim-web-devicons'}
	}

	use {
 		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	use 'fneu/breezy'

	use 'tweekmonster/startuptime.vim'

    use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
    }

	use 'marko-cerovac/material.nvim'

	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

	use 'hrsh7th/nvim-compe'

	use 'kabouzeid/nvim-lspinstall'
end)

-- plugin configs
require('plugins/nvim-tree')
require('plugins/statusline')
require('plugins/treesitter')
require('plugins/material')
require('plugins/neogit')
require('plugins/lsp')
require('plugins/compe')
