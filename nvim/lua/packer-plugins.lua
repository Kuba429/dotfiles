return require("packer").startup(function()
	use 'wbthomason/packer.nvim'
	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup { }
		end
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'terryma/vim-multiple-cursors'
	use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})
	use 'm4xshen/autoclose.nvim'
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		}
	}
	use { 'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production' }
	use 'mattn/emmet-vim'
	use 'othree/html5.vim'
	use 'pangloss/vim-javascript'
	use { 'evanleck/vim-svelte', branch= 'main' }
	use 'fatih/vim-go'
	--themes
	use { 
		'olivercederborg/poimandres.nvim',
		config = function()
			require('poimandres').setup {
			}
		end
	}
	use "sainnhe/sonokai"
	use 'dikiaap/minimalist'
	use 'jacoborus/tender.vim'
	use 'Mofiqul/vscode.nvim'
	use 'https://gitlab.com/__tpb/monokai-pro.nvim'
	use 'bluz71/vim-moonfly-colors'
	use 'B4mbus/oxocarbon-lua.nvim'
	--	use 'Yazeed1s/minimal.nvim'
	use 'Kuba429/minimal.nvim'




end)




