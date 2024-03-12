-- Install lazy.nvim if not already installed
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

-- Use a protected call so we don't error out on first use
local ok, lazy = pcall(require, "lazy")
if not ok then
    return
end
local map = require("helpers.keys").map
-- autocmd groups
local augroup = vim.api.nvim_create_augroup
local dcapedcodeGroup = augroup('dcapedcode', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
	require("plenary.reload").reload_module(name)
end

vim.filetype.add({
	extensions = {
		templ = 'templ'
	}
})

autocmd('TextYankPost', {
	group = yank_group,
	pattern = '*',
	callback = function()
		vim.highlight.on_yank({
			higroup = 'IncSearch',
			timeout = 40,
		})
	end,
})

autocmd({ "BufWritePre" }, {
	group = dcapedcodeGroup,
	pattern = '*',
	command = [[%s/\s+$//e]]
})
autocmd ('LspAttach', {
    group = dcapedcodeGroup,
    callback = function(e)
    local opts = {buffer = e.buf}
        map("n", "gd", function() vim.lsp.buf.definition() end, opts)
		map('n', 'gd', function() vim.lsp.buf.definition() end, opts)
		map('n', 'K', function() vim.lsp.buf.hover() end, opts)
		map('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
		map('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
		map('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
		map('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
		map('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
		map('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
    end
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
-- We have to set the leader key here for lazy.nvim to work
require("helpers.keys").set_leader(" ")

-- Load plugins from specifications
-- (The leader key must be set before this)
lazy.setup("plugins")

-- might as well set up an easy-access keybinding
map("n", "<leader>L", lazy.show, "Show Lazy")
