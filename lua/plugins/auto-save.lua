return {
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged", "TextChangedI" },
    opts = {
      debounce_delay = 1000, -- save 1s after you stop typing
      trigger_events = {
        defer_save = { "InsertLeave", "TextChanged", "TextChangedI" },
      },
      condition = function(buf)
        -- exception: never autosave lua files
        return vim.bo[buf].filetype ~= "lua"
      end,
      -- Optional: skip autosave for certain buffers
      -- condition = function(buf)
      --   return vim.bo[buf].filetype ~= "neo-tree"
      -- end,
    },
  },
}
