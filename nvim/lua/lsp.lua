require("mason").setup()
local servers = {
	'tsserver', 'jsonls', 'tailwindcss', 'gopls', 'svelte', 'volar', 'rust_analyzer', 'cssls', 'emmet_ls', 'astro', 'prismals', 'pyright', 'clangd', 'ocamllsp', 'zls' 
	--'denols',
}
require('mason-lspconfig').setup({
	ensure_installed = servers	
})
local lspconfig = require('lspconfig')

for _, lsp in ipairs( servers ) do
	lspconfig[lsp].setup({})
end
vim.highlight.priorities.semantic_tokens = 95 -- lspconfig overwrites treesitter highlights; treesitters value is 100 so keep it under 100
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

local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
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
