require("mason").setup()
require('null')
local servers = {
	'tsserver', 'jsonls', 'tailwindcss', 'gopls', 'svelte', 'volar', 'rust_analyzer', 'cssls', 'emmet_ls', 'astro', 'prismals', 'pyright', 'clangd', 'ocamllsp', 'zls', 'cssmodules_ls',
	'denols',
}

require('mason-lspconfig').setup({
	ensure_installed = servers	
})
local lspconfig = require('lspconfig')

for _, lsp in ipairs( servers ) do
	if lsp == "tsserver" then
		lspconfig["tsserver"].setup{
			root_dir = lspconfig.util.root_pattern("package.json"),
			single_file_support = false,
			on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end
		}
	elseif lsp == "volar" then
		lspconfig["volar"].setup {
			on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end
		}
	elseif lsp == "denols" then
		lspconfig["denols"].setup {
			root_dir = lspconfig.util.root_pattern("deno.jsonc"),
		}
	else	
		lspconfig[lsp].setup({})
	end
end


require("lspsaga").setup({
	ui = {
		title = true,
		border = 'rounded',
	},
	beacon = {
		enable = true
	},
	symbol_in_winbar = {
		enable = false,
	},
})

local keymap = vim.keymap.set

keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
keymap({"n","v"}, "<space>ca", "<cmd>Lspsaga code_action<CR>")
keymap("n", "<space>RN", "<cmd>Lspsaga rename ++project<CR>")
keymap("n", "<space>rn", "<cmd>Lspsaga rename<CR>")
keymap("n", "<space>rn", "<cmd>Lspsaga rename<CR>")
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
keymap("n", "<Leader>xx", "<cmd>Lspsaga show_workspace_diagnostics<CR>")
keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.format()<CR>")

local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
  sources = {
	  {name = 'nvim_lsp'},
	  {name = 'cmp-tw2css' },
	  {name = 'luasnip'},
  },
  window = {
	  completion = cmp.config.window.bordered(),
	  documentation = cmp.config.window.bordered()
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
	['<C-u>'] = cmp.mapping.scroll_docs(-4),
	['<C-d>'] = cmp.mapping.scroll_docs(4),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<tab>'] = cmp.mapping.confirm({ select = true }),
}),
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
})

vim.highlight.priorities.semantic_tokens = 95 -- lspconfig overwrites treesitter highlights; treesitters value is 100 so keep it under 100
vim.highlight.priorities.syntax = 96
vim.highlight.priorities.treesitter = 99
vim.highlight.priorities.user = 100

