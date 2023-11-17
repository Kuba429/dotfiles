local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- LSP STUFF
	'williamboman/mason.nvim',
	'onsails/lspkind.nvim',
	'neovim/nvim-lspconfig',
	'mfussenegger/nvim-dap',
	'jose-elias-alvarez/null-ls.nvim',
	'williamboman/mason-lspconfig.nvim',
	{
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
		dependencies = {
			{"kyazdani42/nvim-web-devicons"},
			--Please make sure you install markdown and markdown_inline parser
			{"nvim-treesitter/nvim-treesitter"}
		}
	},
	'hrsh7th/nvim-cmp' ,                  -- Autocomplete engine
	'hrsh7th/cmp-nvim-lsp' ,              -- Completion source for LSP
	'L3MON4D3/LuaSnip' , 
	-- LANGUAGE STUFF
	'jcha0713/cmp-tw2css',
	'nvim-treesitter/playground',
	'nvim-treesitter/nvim-treesitter-context',
	'mattn/emmet-vim',
	'othree/html5.vim',
	'pantharshit00/vim-prisma',
	'jxnblk/vim-mdx-js',
	'findango/vim-mdx',
	'pangloss/vim-javascript',
	'ziglang/zig.vim',
	{ 'evanleck/vim-svelte', branch= 'main' },
	--'fatih/vim-go',
	-- EDITOR STUFF
	{
		'stevearc/oil.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = { "kyazdani42/nvim-web-devicons" },
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		opts = {
			-- add any custom options here
		}
	},
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'hyper',
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{
							desc = ' load session',
							group = 'Label',
							action = 'lua require("persistence").load()',
							key = 's',
						},
					}
				}
			}
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end
	},
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup { }
		end
	},
	{ "ThePrimeagen/harpoon", require={ "nvim-lua/plenary.nvim" } },
	{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	},
	{
		'nvim-telescope/telescope.nvim' ,
		config = function()
			require('telescope').setup{
				pickers = {
					find_files = {
						theme = "dropdown"
					},
					live_grep = {
						theme = "dropdown"
					},
				}
			}
		end,
		dependencies =  {'nvim-lua/plenary.nvim'} 
	},
	{ 'ibhagwan/fzf-lua', dependencies =  {'kyazdani42/nvim-web-devicons'}  },
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup({
			})
		end
	},
	"jiangmiao/auto-pairs",
	{
		'kyazdani42/nvim-tree.lua',
		dependencies = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		}
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-tree.lua', opt = true }
	},
	{'akinsho/bufferline.nvim',  dependencies = {'kyazdani42/nvim-web-devicons'}},
	'norcalli/nvim-colorizer.lua',
	-- THEMES
	'sainnhe/sonokai',
	'Mofiqul/vscode.nvim',
	{'rose-pine/neovim', name = 'rose-pine' },
	{"catppuccin/nvim", name = 'catppuccin'},
	'tjdevries/colorbuddy.nvim',
	'pineapplegiant/spaceduck',
	--'oxfist/night-owl.nvim' , -- for whatever reason this plugin overwrites visual highlight group after window loses focus; uncomment when needed
	'srcery-colors/srcery-vim',
	'olivercederborg/poimandres.nvim',
	'Alexis12119/nightly.nvim',
	--'ray-x/material_plus.nvim',
	"nyoom-engineering/oxocarbon.nvim",
	"Yazeed1s/oh-lucy.nvim"
})
