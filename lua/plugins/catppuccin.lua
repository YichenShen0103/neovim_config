return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 100,
    config = function()
        require("catppuccin").setup({ transparent = vim.g.transparent_enabled })
        vim.cmd.colorscheme "catppuccin"
    end
}
