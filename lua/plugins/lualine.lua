return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local auto = require('lualine.themes.auto')
        auto.normal.c.bg = '#ffff'
        auto.inactive.c.bg = '#ffff'
        require("lualine").setup({
            options = {
                theme = auto
            }
        })
    end
}
