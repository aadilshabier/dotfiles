-- FIXME: lualine and material plugins break splash screen

local cmd = vim.cmd
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  cmd [[packadd packer.nvim]]
end

local packer = require("packer").startup(function(use)
  -- Manage itself
	use {
		'wbthomason/packer.nvim',
	}

	use {
		'neovim/nvim-lspconfig',
		requires = {
			'kabouzeid/nvim-lspinstall',
		},
		config = require('plugins/lsp').configure
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
	}

	use {
    	'kyazdani42/nvim-tree.lua',
    	requires = {'kyazdani42/nvim-web-devicons'},
		config = require('nvim-tree').configure,
	}

	-- TODO: switch to lualine
	use {
 		'hoob3rt/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
			opt = true
		},
		config = require('plugins/statusline').configure,
	}

	use {
		'fneu/breezy',
		disable = true,
	}

	use {
		'tweekmonster/startuptime.vim',
	}

    use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = require('plugins/treesitter').configure,
    }

	-- FIXME: lualine and material plugins break splash screen
	use {
		'marko-cerovac/material.nvim',
		config = require('plugins/material').configure
	}

	use {
		'TimUntersberger/neogit',
		requires = 'nvim-lua/plenary.nvim',
		config = require('plugins/neogit').configure,
	}

	use {
		'hrsh7th/nvim-compe',
		config = require('plugins/compe').configure
	}

	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function () require("bufferline").setup{} end
	}

end)


return packer
