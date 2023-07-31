vim.g.mapleader = " "

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
	{ from = "S",		to = ":w<CR>" },
	{ from = "Q",		to = ":q<CR>" },
	{ from = ";",		to = ":",		mode = mode_nv },

	-- Movement
	{ from = "i",		to = "k",		mode = mode_nv },
	{ from = "k",		to = "j",		mode = mode_nv },
	{ from = "j",		to = "h",               mode = mode_nv },
	{ from = "gi",		to = "gk",		mode = mode_nv },
	{ from = "gk",		to = "gj",		mode = mode_nv },
	{ from = "J",		to = "0",		mode = mode_nv },
	{ from = "L",		to = "$",		mode = mode_nv },

	-- Actions
	{ from = "h",		to = "i",		mode = mode_nv },
	{ from = "H",		to = "I",		mode = mode_nv },
}


for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end

local function run_vim_shortcut(shortcut)
	local escaped_shortcut = vim.api.nvim_replace_termcodes(shortcut, true, false, true)
	vim.api.nvim_feedkeys(escaped_shortcut, 'n', true)
end

-- close win below
vim.keymap.set("n", "<leader>q", function()
	vim.cmd("TroubleClose")
	local wins = vim.api.nvim_tabpage_list_wins(0)
	if #wins > 1 then
		run_vim_shortcut([[<C-w>j:q<CR>]])
	end
end, { noremap = true, silent = true })
