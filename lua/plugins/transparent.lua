return {
    "xiyaowong/transparent.nvim",
    config = function()
    require("transparent").setup({
      extra_groups = {
          "NeoTreeVertSplit",
          "NeoTreeWinSeparator",
          "NormalFloat",
          "NvimTreeNormal",
          "NeoTreeNormal",
          "NeoTreeFloatBorder",
          "NeoTreeNormalNC",
      },
    })
    end
}
