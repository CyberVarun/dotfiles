return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        require("tokyonight").setup({
                style = "night",
        })
      vim.cmd("colorscheme tokyonight")
    end,
  },
}
