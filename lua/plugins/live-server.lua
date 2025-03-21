return {
	"barrett-ruth/live-server.nvim",
	cmd = { "LiveServerStart", "LiveServerStop" },
	config = function()
		require("live-server").setup()
		vim.keymap.set("n", "<leader>o", ":LiveServerStart<CR>", { noremap = true, silent = false })
		vim.keymap.set("n", "<leader>c", ":LiveServerStop<CR>", { noremap = true, silent = false })
	end,
}
