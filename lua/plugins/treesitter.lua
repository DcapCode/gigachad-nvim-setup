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
                },
                highlight = {
                    enable = true,
                    additinal_vim_regex_highlighting = { 'markdown' }
                },
                sync_install = false,
                auto_install = true,
                indent = {
                    enable = true
                },
            })

            local treesitter_parser_config = require('nvim-treesitter.parsers').get_parser_configs()
            treesitter_parser_config.templ = {
                install_info = {
                    url = 'https://github.com/vrischmann/tree-sitter-templ.git',
                    files = { 'src/parsers.c', 'src/scanner.c' },
                    branch = 'master',
                },
            }
            vim.treesitter.language.register('templ', 'templ')
        end
    }
}
