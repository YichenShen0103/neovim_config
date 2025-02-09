return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        vim.keymap.set("n", "<leader>p", ":Neotree filesystem reveal left toggle<CR>")
        vim.keymap.set("n", "<leader>b", ":Neotree toggle buffers right<CR>")
        vim.keymap.set("n", "<leader>s", ":Neotree float git_status<CR>")
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true, -- 显示过滤后的文件
                },
            },
            window = {
                width = 30,
            },
        })

        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN] = "",
                    [vim.diagnostic.severity.INFO] = "",
                    [vim.diagnostic.severity.HINT] = "󰴓",
                },
            },
        })
    end,
}
