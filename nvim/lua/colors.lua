-- Screen specifics to make colors work
vim.cmd [[let $NVIM_TUI_ENABLE_TRUE_COLOR=1]]
vim.o.termguicolors = true
vim.g.t_Co=256
vim.o.term='screen-256color'


-- Set colorscheme defaults (order is important)
vim.g.everforest_better_perfomance = 1
vim.g.background="dark"
vim.g.everforest_background = "medium"
vim.g.everforest_diagnostic_text_highlight = 1
vim.cmd 'colorscheme everforest'


-- -- Set status bar settings
-- vim.g.lightline = {
--   colorscheme = 'Tomorrow_Night_Eighties',
--   active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
--   component_function = { gitbranch = 'fugitive#head' },
-- }

-- Highlight on yank. Do nice highlight blink
vim.api.nvim_exec(
	[[
	augroup YankHighlight
		autocmd!
		autocmd TextYankPost * silent! lua vim.highlight.on_yank()
	augroup end
	]],
	false
)
