return {
	{
		"williamboman/mason.nvim",
		commit = "e2f7f9044ec30067bc11800a9e266664b88cda22",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		commit = "f75e877f5266e87523eb5a18fcde2081820d087b",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		commit = "f98fa715acc975c2dd5fb5ba7ceddeb1cc725ad2",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({ capabilities = capabilities })
				end,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gp", ":pop<CR>", {})

			-- 自定义诊断符号
			local signs = {
				{ name = "DiagnosticSignError", text = "" }, -- 错误标志
				{ name = "DiagnosticSignWarn", text = "" }, -- 警告标志
				{ name = "DiagnosticSignInfo", text = "" }, -- 信息标志
				{ name = "DiagnosticSignHint", text = "󰴓" }, -- 提示标志
			}

			-- 设置符号
			for _, sign in ipairs(signs) do
				vim.fn.sign_define(sign.name, { text = sign.text, texthl = sign.name, numhl = sign.name })
			end
		end,
	},
}
