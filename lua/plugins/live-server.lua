-- requirement: live-server
-- run `sudo npm install -g live-server`

return {
    "barrett-ruth/live-server.nvim",
    config = function()
        require("live-server").setup()
        vim.keymap.set("n", "<leader>L", ":LiveServerToggle<CR>", {}) -- host establish
    end,
}
