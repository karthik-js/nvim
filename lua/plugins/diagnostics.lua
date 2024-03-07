return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function()
		vim.keymap.set("n", "<leader>tt", require("trouble").toggle, { desc = "Toggle [T]rouble" })
	end,
}
