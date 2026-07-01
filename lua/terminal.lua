-- Shortcut: Open terminal on the right side
vim.keymap.set('n', '<Leader>tl', ':botright vertical terminal<CR>', opts)

-- Exit terminal mode easily
vim.keymap.set('t', '<C-c>', [[<C-\><C-n>]], { silent = true })

if vim.fn.has("win32") == 1 then
    vim.opt.shell = "pwsh" -- Use PowerShell as default terminal on windows
else
    vim.opt.shell = "bash" -- Use bash as default terminal on linux
end

-- Shortcut: Open terminal at the bottom
vim.keymap.set('n', '<Leader>tb', function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 15)
end)

-- Remove line numbers on terminal
vim.api.nvim_create_autocmd('TermOpen', {
	group = vim.api.nvim_create_augroup('custom-term-open', {clear = true}),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})