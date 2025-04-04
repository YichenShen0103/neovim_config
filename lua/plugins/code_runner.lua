return {
	{
		"CRAG666/code_runner.nvim",
		config = function()
			vim.keymap.set("n", "<leader>R", ":RunCode<CR>", { noremap = true, silent = false })
			require("code_runner").setup({
				filetype = {
					java = {
						"cd $dir &&",
						"javac $fileName &&",
						"java $fileNameWithoutExt",
					},
					python = {
						"python3 -u",
					},
					typescript = "deno run",
					rust = {
						"cd $dir &&",
						"rustc $fileName &&",
						"$dir/$fileNameWithoutExt",
					},
					cpp = {
						"cd $dir &&",
						"g++ $fileName",
						"-o /tmp/$fileNameWithoutExt &&",
						"/tmp/$fileNameWithoutExt",
					},
					c = {
						"cd $dir &&",
						"gcc $fileName",
						"-o /tmp/$fileNameWithoutExt &&",
						"/tmp/$fileNameWithoutExt",
					},
					php = {
						"php",
					},
				},
			})
		end,
	},
}
