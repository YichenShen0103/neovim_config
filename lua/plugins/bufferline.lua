return {
    'tomiis4/BufferTabs.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
    lazy = false,
    config = function()
        require('buffertabs').setup({
            -- config
            vim.keymap.set("n", "<Leader>B", ":BufferTabsToggle<CR>")
        })
        require('buffertabs').toggle()
    end
}
