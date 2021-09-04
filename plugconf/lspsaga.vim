lua << EOF
local saga = require('lspsaga')

saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = ''
}
EOF

"autocmd CursorHold * Lspsaga hover_doc
"autocmd CursorMoved * lua require('lspsaga.hover').render_hover_doc()
