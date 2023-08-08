vim.g.mapleader = " "

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
	-- Basic Mappings
	{ from = "S",	to = ":w<CR>" },
	{ from = "Q",		to = ":q<CR>" },
	{ from = ";",		to = ":",		mode = mode_nv },

	-- Actions
	{ from = "h",		to = "i",		mode = mode_nv },
	{ from = "H",		to = "I",		mode = mode_nv },
	-- copy a line
	{ from = "yl",		to = "0v$hy",		mode = mode_nv },
	-- don't show search result
	{ from = "<leader><CR>",		to = ":nohlsearch<CR>",		mode = mode_nv },

	-- Movement
	-- basic movement
	--"     ^
	--"     i
	--" < j   l >
	--"     k
	--"     v
	{ from = "i",		to = "k",		mode = mode_nv },
	{ from = "k",		to = "j",		mode = mode_nv },
	{ from = "j",		to = "h",		mode = mode_nv },
	{ from = "gi",		to = "gk",		mode = mode_nv },
	{ from = "gk",		to = "gj",		mode = mode_nv },
	{ from = "I",		to = "5k",		mode = mode_nv },
	{ from = "K",		to = "5j",		mode = mode_nv },
	{ from = "J",		to = "0",		mode = mode_nv },
	{ from = "L",		to = "$",		mode = mode_nv },
	-- search result movement
	{ from = "n",		to = "nzz",		mode = mode_nv },
	{ from = "N",		to = "Nzz",		mode = mode_nv },
	-- view movement
	{ from = "<c-i>",		to = "<c-y>",		mode = mode_nv },
	{ from = "<c-k>",		to = "<c-e>",		mode = mode_nv },
	-- jump movement
	-- jump to the next/new position
	{ from = "<c-p>",		to = "<c-o>",		mode = mode_nv },
	-- jump to the pervious position
	{ from = "<c-n>",		to = "<c-i>",		mode = mode_nv },

	-- Window & Splits
	{ from = "<leader>i",		to = "<c-w>k", },
	{ from = "<leader>k",		to = "<c-w>j", },
	{ from = "<leader>j",		to = "<c-w>h", },
	{ from = "<leader>l",		to = "<c-w>l", },
	{ from = "s",		to = "<nop>", },
	{ from = "si",		to = ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", },
	{ from = "sk",		to = ":set splitbelow<CR>:split<CR>", },
	{ from = "sj",		to = ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", },
	{ from = "sl",		to = ":set splitright<CR>:vsplit<CR>", },
	{ from = "<up>",		to = ":res +5<CR>", },
	{ from = "<down>",		to = ":res -5<CR>", },
	{ from = "<left>",		to = ":vertical resize-5<CR>", },
	{ from = "<right>",		to = ":vertical resize+5<CR>", },
	
	-- Tab management
	{ from = "ta",		to = ":tabe<CR>", },
	{ from = "tA",		to = ":tab split<CR>", },
	{ from = "tj",		to = ":-tabnext<CR>", },
	{ from = "tl",		to = ":+tabnext<CR>", },
	{ from = "tmj",		to = ":-tabmove<CR>", },
	{ from = "tml",		to = ":+tabmove<CR>", },
}


for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end

