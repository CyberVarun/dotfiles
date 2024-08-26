return {
	"andrewferrier/wrapping.nvim",
	event = "VeryLazy",
	config = function()
		require("wrapping").setup({
			Softener = { markdown = 1.3 },
		})
	end,
}
