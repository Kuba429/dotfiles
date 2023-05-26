return require("packer").startup(function()
	use 'wbthomason/packer.nvim'

	--use {'neoclide/coc.nvim', branch = 'release'}
	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'tell-k/vim-autopep8'
	-- Lua
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup { } 
		end
	}

	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup { }
		end
	}
	use { "ThePrimeagen/harpoon", require={ "nvim-lua/plenary.nvim" } }
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'nvim-treesitter/playground'
	use 'nvim-treesitter/nvim-treesitter-context'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
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
	use "jiangmiao/auto-pairs"
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		}
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	use { 'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production' }
	use 'mattn/emmet-vim'
	use 'othree/html5.vim'
	use 'pantharshit00/vim-prisma'
	use 'jxnblk/vim-mdx-js'
	use 'findango/vim-mdx'
	use 'pangloss/vim-javascript'
	use 'ziglang/zig.vim'
	use { 'evanleck/vim-svelte', branch= 'main' }
	use 'fatih/vim-go'
	use 'norcalli/nvim-colorizer.lua'
	--themes
	use 'olivercederborg/poimandres.nvim'
	use 'tjdevries/colorbuddy.nvim'
	use 'AlexvZyl/nordic.nvim'
	use {
		'meliora-theme/neovim',
		requires = {'rktjmp/lush.nvim'}
	}
	use 'sainnhe/sonokai'
	use 'Mofiqul/vscode.nvim'
	use 'jacoborus/tender.vim'
	use 'folke/tokyonight.nvim'
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use { "catppuccin/nvim", as = "catppuccin" }
	use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
	use 'flrnd/plastic.vim'
	use 'MomePP/plastic-nvim'
end)


