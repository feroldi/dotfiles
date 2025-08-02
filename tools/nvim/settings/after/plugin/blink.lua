require("blink.cmp").setup({
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
                preselect = false
            }
        },
        menu = {
            auto_show = false
        },
    },
    cmdline = {
        enabled = false
    },
})
      
