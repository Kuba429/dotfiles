local null_ls  = require('null-ls')

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.prettierd.with({
		env = {
		}
	})
}

null_ls.setup({
  	on_attach = function(client, bufnr)
    	if client.server_capabilities.documentFormattingProvider then
      	    local seq_sync_cmd = "nnoremap <silent><buffer> <Leader>$$ :lua vim.lsp.buf.formatting_seq_sync()<CR>"
      	    vim.cmd(seq_sync_cmd)
    	end
    	if client.server_capabilities.documentRangeFormattingProvider then
      	    local format_cmd = "xnoremap <silent><buffer> <Leader>$$ :lua vim.lsp.buf.format()<CR>"
      	    vim.cmd(format_cmd)
    	end
  	end,
  	sources = {
		null_ls.builtins.formatting.prettier.with({

		})
  	}
})
