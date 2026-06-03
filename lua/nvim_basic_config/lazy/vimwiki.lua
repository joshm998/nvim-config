return {
	"vimwiki/vimwiki",
	event = "BufEnter *.md",
	keys = { "<leader>ww", "<leader>wt" },
	init = function()
		vim.g.vimwiki_path = "~/vimwiki/"
		vim.g.vimwiki_syntax = "markdown"
		vim.g.vimwiki_ext = "md"
	end,
}
