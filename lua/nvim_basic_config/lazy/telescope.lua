return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})
	local builtin = require('telescope.builtin')
	local home = os.getenv("HOME")

	vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<C-p>', builtin.git_files, {})
	vim.keymap.set('n', '<leader>ps', function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") });
	end)
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
	vim.keymap.set('n', '<leader>fh', function()
		builtin.find_files({
        		find_command = {
            	'rg',
            	'--files',
            	'--hidden',
            	'--no-ignore',
            	'-g', '!.git',
            	'-g', '!node_modules',
            	'-g', '!.npm',
            	'-g', '!.cache',
            	'-g', '!.vscode',
            	'-g', '!*.lock',
            	home .. '/Development',
            	home .. '/Documents',
            	home .. '/Downloads'
        	},
       			prompt_title = "Search My Files"
		})
	end)
    end
}
