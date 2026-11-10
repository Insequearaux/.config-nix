return{
  "mikavilpas/yazi.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  };
vim.keymap.set("n","<leader>-", function()
  require("yazi").yazi()
end)
}
