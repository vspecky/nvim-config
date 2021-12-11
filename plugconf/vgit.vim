lua << EOF
local vgit = require('vgit');
local utils = require('vgit.utils');

vgit.setup {
    debug = true,
    keymaps = {
        ['n <C-k>'] = 'hunk_up',
        ['n <C-j>'] = 'hunk_down',
        ['n <leader>gs'] = 'buffer_hunk_stage',
        ['n <leader>gr'] = 'buffer_hunk_reset',
        ['n <leader>gp'] = 'buffer_hunk_preview',
        ['n <leader>gb'] = 'buffer_blame_preview',
        ['n <leader>gf'] = 'buffer_diff_preview',
        ['n <leader>gh'] = 'buffer_history_preview',
        ['n <leader>gu'] = 'buffer_reset',
        ['n <leader>gg'] = 'buffer_gutter_blame_preview',
        -- ['n <leader>gd'] = 'project_diff_preview',
        ['n <leader>gq'] = 'project',
        ['n <leader>gx'] = 'toggle_diff_preference',
        ['n <leader>gd'] = 'show_debug_logs'
    }
}
EOF
