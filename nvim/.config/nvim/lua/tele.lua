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
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous
			},
            n = {
                ["<C-c>"] = actions.close
            }
		}
	}
}
local opts = { noremap=true }
vim.api.nvim_set_keymap('n', 'ff', '<cmd>lua require(\'telescope.builtin\').find_files{{hidden=true}, file_ignore_patterns = { \'.git/\' }}<cr>', opts)
vim.api.nvim_set_keymap('n', 'fg', '<cmd>lua require(\'telescope.builtin\').live_grep{vimgrep_arguments = { \'rg\', \'--color=never\', \'--no-heading\', \'--with-filename\', \'--line-number\', \'--column\', \'--smart-case\', \'-u\', \'--hidden\'}, file_ignore_patterns = { \'.git/\' }}<cr>', opts)
vim.api.nvim_set_keymap('n', 'fgc', '<cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<cr>', opts)
vim.api.nvim_set_keymap('n', 'fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', opts)
vim.api.nvim_set_keymap('n', 'fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', opts)
