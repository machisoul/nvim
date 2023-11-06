vim.g.mapleader = " "

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
	-- Basic Mappings
	{ from = "S",	to = ":w<CR>" },
	{ from = "Q",	to = ":q<CR>" },
	{ from = ";",	to = ":",	mode = mode_nv },

	-- copy a line
	-- don't show search result

	-- Movement
	-- basic movement
	--"     ^
	--"     k
	--" < h   l >
	--"     j
	--"     v
	-- search result movement
	-- view movement
	-- jump movement
	-- jump to the next/new position
	-- jump to the pervious position

	-- Window & Splits
	{ from = "<leader>k",	to = "<c-w>k" },
	{ from = "<leader>j",	to = "<c-w>j" },
	{ from = "<leader>h",	to = "<c-w>h" },
	{ from = "<leader>l",	to = "<c-w>l" },
	{ from = "s",	to = "<nop>" },
	{ from = "sk",	to = ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>" },
	{ from = "sj",	to = ":set splitbelow<CR>:split<CR>" },
	{ from = "sh",	to = ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>" },
	{ from = "sl",	to = ":set splitright<CR>:vsplit<CR>" },
	{ from = "<up>",	to = ":res +5<CR>" },
	{ from = "<down>",	to = ":res -5<CR>" },
	{ from = "<left>",	to = ":vertical resize-5<CR>" },
	{ from = "<right>",	to = ":vertical resize+5<CR>" },
	
	-- Tab management
	{ from = "ta",	to = ":tabe<CR>" },
	{ from = "tA",	to = ":tab split<CR>" },
	{ from = "th",	to = ":-tabnext<CR>" },
	{ from = "tl",	to = ":+tabnext<CR>" },
	{ from = "tmh",	to = ":-tabmove<CR>" },
	{ from = "tml",	to = ":+tabmove<CR>" },
}


for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end

