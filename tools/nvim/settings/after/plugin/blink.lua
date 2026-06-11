local cmp = require("blink.cmp")

cmp.build():pwait()

cmp.setup({
    keymap = {
      -- set to 'none' to disable the 'default' preset
      preset = 'enter',

      ['<Up>'] = { 'select_prev', 'fallback' },
      ['<Down>'] = { 'select_next', 'fallback' },

      -- disable a keymap from the preset
      ['<C-e>'] = false, -- or {}
    },
    completion = {
        list = {
            selection = {
                preselect = true
            }
        },
        menu = {
            auto_show = true,
            draw = {
                columns = { { 'label', 'label_description', gap = 1 }, { 'kind' } }
            }
        },
        documentation = {
            window = {
                min_width = 10,
                max_width = 80,
                max_height = 20,
                winblend = 0,
                winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc',
                scrollbar = true,
                direction_priority = {
                    menu_north = { 'e', 'w', 'n', 's' },
                    menu_south = { 'e', 'w', 's', 'n' },
                },
            },
        },
    },
    cmdline = {
        enabled = false
    },
})
