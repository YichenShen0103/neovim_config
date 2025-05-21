return {
    "amitds1997/remote-nvim.nvim",
    version = "*",                 -- Pin to GitHub releases
    dependencies = {
        "nvim-lua/plenary.nvim",   -- For standard functions
        "MunifTanjim/nui.nvim",    -- To build the plugin UI
        "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = function()
        require("remote-nvim").setup({
            client_callback = function(port, workspace_config)
                -- 检查是否在 tmux 中
                if vim.env.TMUX == nil or vim.env.TMUX == "" then
                    print("Not inside a tmux session. Port:", port)
                    return
                end

                -- 构造 tmux window 名和命令
                local window_name = ("remote-%s"):format(workspace_config.host)
                local cmd = ("tmux new-window -n %s 'nvim --server localhost:%s --remote-ui'"):format(window_name, port)

                -- 启动命令
                vim.fn.jobstart(cmd, {
                    detach = true,
                    on_exit = function(job_id, exit_code)
                        print("Launched tmux window:", window_name, "Job ID:", job_id, "Exit code:", exit_code)
                    end,
                })
            end,
        })
    end,
}
