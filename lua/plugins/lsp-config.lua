return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
                cmd = { "clangd" },
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gb", ":pop<CR>", {})

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
