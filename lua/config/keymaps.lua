vim.g.mapleader = " "

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
	-- Basic Mappings
	{ from = "<c-s>",	to = ":w<CR>" },
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
	{ from = "K",	to = "5k",	mode = mode_nv },
	{ from = "J",	to = "5j",	mode = mode_nv },
	{ from = "H",	to = "0",	mode = mode_nv },
	{ from = "L",	to = "$",	mode = mode_nv },
	-- search result movement
	-- view movement
	-- jump movement
	-- jump to the next/new position
	-- jump to the pervious position

	-- Window & Splits
	{ from = "<c-k>",	to = "<c-w>k" },
	{ from = "<c-j>",	to = "<c-w>j" },
	{ from = "<c-h>",	to = "<c-w>h" },
	{ from = "<c-l>",	to = "<c-w>l" },
	{ from = "s",	to = "<nop>" },
	{ from = "<leader>sk",	to = ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>" },
	{ from = "<leader>sj",	to = ":set splitbelow<CR>:split<CR>" },
	{ from = "<leader>sh",	to = ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>" },
	{ from = "<leader>sl",	to = ":set splitright<CR>:vsplit<CR>" },
	{ from = "<up>",	to = ":res +3<CR>" },
	{ from = "<down>",	to = ":res -3<CR>" },
	{ from = "<left>",	to = ":vertical resize-3<CR>" },
	{ from = "<right>",	to = ":vertical resize+3<CR>" },
	
	-- Tab management
	{ from = "ta",	to = ":tabe<CR>" },
	{ from = "tA",	to = ":tab split<CR>" },
	{ from = "th",	to = ":-tabnext<CR>" },
	{ from = "tl",	to = ":+tabnext<CR>" },
	{ from = "tmh",	to = ":-tabmove<CR>" },
	{ from = "tml",	to = ":+tabmove<CR>" },

	-- NvimTree
	{ from = "<leader>e",	to = ":NvimTreeToggle<CR>" },

}


for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end

