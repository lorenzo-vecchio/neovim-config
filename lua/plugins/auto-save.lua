return {
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      debounce_delay = 1000, -- save 1s after you stop typing
      -- Optional: skip autosave for certain buffers
      -- condition = function(buf)
      --   return vim.bo[buf].filetype ~= "neo-tree"
      -- end,
    },
  },
}
