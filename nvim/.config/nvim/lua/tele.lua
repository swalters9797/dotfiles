local has_telescope, telescope = pcall(require, 'telescope')
if not has_telescope then
    return 
end

local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
telescope.setup{
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous
			}
		}
	}
}
local opts = { noremap=true }
vim.api.nvim_set_keymap('n', 'ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', opts)
vim.api.nvim_set_keymap('n', 'fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', opts)
vim.api.nvim_set_keymap('n', 'fgc', '<cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<cr>', opts)
vim.api.nvim_set_keymap('n', 'fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', opts)
vim.api.nvim_set_keymap('n', 'fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', opts)
