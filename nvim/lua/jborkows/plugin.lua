vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'morhetz/gruvbox'
	use  'nvim-lua/plenary.nvim'
	use  'BurntSushi/ripgrep'
	use 'nvim-telescope/telescope.nvim'
	use {'fatih/vim-go', run = ':GoUpdateBinaries'}
	use {
		"ThePrimeagen/refactoring.nvim",
		requires = {
			{"nvim-lua/plenary.nvim"},
			{"nvim-treesitter/nvim-treesitter"}
		}
	}
	use 'mbbill/undotree'
	use 'neovim/nvim-lspconfig'
	end)

