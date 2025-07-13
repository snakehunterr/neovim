return {
  {
    "saghen/blink.cmp",
    optional = true,
    dependencies = {
      "moyiz/blink-emoji.nvim",
    },
    opts = {
      completion = {
        trigger = {
          show_on_insert_on_trigger_character = false,
        },
        menu = {
          auto_show = true,
          border = "rounded",
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        },
        documentation = {
          auto_show = true,
          window = {
            border = "rounded",
          },
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "emoji", "dadbod" },
        per_filetype = {
          sql = { "snippets", "dadbod", "buffer" },
        },
        providers = {
          emoji = {
            module = "blink-emoji",
            name = "Emoji",
            score_offset = 93, -- the higher the number, the higher the priority
            min_keyword_length = 2,
            opts = { insert = true }, -- Insert emoji (default) or complete its name
          },
          dadbod = {
            name = "Dadbod",
            module = "vim_dadbod_completion.blink",
            -- min_keyword_length = 2,
            score_offset = 85, -- the higher the number, the higher the priority
          },
        },
      },
    },
  },
}
