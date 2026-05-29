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
                preselect = true
            }
        },
        menu = {
            auto_show = true
        },
    },
    cmdline = {
        enabled = false
    },
})
      
