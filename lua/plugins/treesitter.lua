return 
{
	{
		'nvim-treesitter/nvim-treesitter',
		build = function()
			pcall(require('nvim-treesitter.install').update({ with_sync = true }))
		end,
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = {
                    'c_sharp',
                    'svelte',
                    'html',
                    'css',
                    'javascript',
                    'typescript',
                    'lua',
                    'rust'
                },
				highlight = { enable = true },
				sync_install = false,
				auto_install = true,
				additional_vim_regex_highlighting = false,



			})
		end

	}

}
