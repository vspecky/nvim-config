lua << EOF
local nvim_lsp = require('lspconfig')
local lsp_installer = require('nvim-lsp-installer')
local illuminate = require('illuminate')
local aerial = require('aerial')
local cmp = require('cmp')
local USER = vim.fn.expand("$USER")
sumneko_root_path = "/home/" .. USER .. "/.config/nvim/misc/lua-language-server"
sumneko_binary = "/home/" .. USER .. "/.config/nvim/misc/lua-language-server/bin/lua-language-server"
-- local coq = require('coq')
-- local vtypes = require('virtualtypes')

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },

    mapping = {
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    },

    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'buffer' },
        { name = 'path' }
    }
})

cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- require'completion'.on_attach(client, bufnr)
  aerial.on_attach(client)
  illuminate.on_attach(client)
  -- vtypes.on_attach(client, bufnr)

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', '<leader>lD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<leader>lwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>lwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>lwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<leader>ln', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- buf_set_keymap('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '<leader>l[', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<leader>l]', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  -- buf_set_keymap('n', '<space>d', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  -- aerial keybindings
  -- Toggle the aerial window with <leader>a
  vim.api.nvim_buf_set_keymap(0, 'n', '<leader>oa', '<cmd>AerialToggle!<CR>', {})
  -- Jump forwards/backwards with '{' and '}'
  vim.api.nvim_buf_set_keymap(0, 'n', '{', '<cmd>AerialPrev<CR>', {})
  vim.api.nvim_buf_set_keymap(0, 'n', '}', '<cmd>AerialNext<CR>', {})
  -- Jump up the tree with '[[' or ']]'
  vim.api.nvim_buf_set_keymap(0, 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
  vim.api.nvim_buf_set_keymap(0, 'n', ']]', '<cmd>AerialNextUp<CR>', {})

  require('vim.lsp.protocol').CompletionItemKind = {
    ' (text)', -- Text
    ' (method)', -- Method
    ' (func)', -- Function
    ' (constructor)', -- Constructor
    ' (field)', -- Field
    ' (var)', -- Variable
    ' (class)', -- Class
    'ﰮ (interface)', -- Interface
    ' (module)', -- Module
    ' (prop)', -- Property
    ' (unit)', -- Unit
    ' (val)', -- Value
    ' (enum)', -- Enum
    ' (keyword)', -- Keyword
    '﬌ (snip)', -- Snippet
    ' (color)', -- Color
    ' (file)', -- File
    ' (ref)', -- Reference
    ' (folder)', -- Folder
    ' (enum_member)', -- EnumMember
    ' (const)', -- Constant
    ' (struct)', -- Struct
    ' (event)', -- Event
    'ﬦ (operator)', -- Operator
    ' (typeparam)', -- TypeParameter
  }

end

lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150
        }
    }

    if server.name == "sumneko_lua" then
        local runtime_path = vim.split(package.path, ';')
        table.insert(runtime_path, "lua/?.lua")
        table.insert(runtime_path, "lua/?/init.lua")

        opts.settings = {
            Lua = {
                runtime = {
                    version = "LuaJIT",
                    path = runtime_path
                },

                diagnostics = {
                    globals = {'vim'}
                },

                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true)
                },

                telemetry = {
                    enable = false
                }
            }
        }
    end

    server:setup(opts)
end)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = {
            spacing = 3,
            prefix = "",
            update_on_insert = true
        }
    }
)

EOF

set completeopt=menu,menuone,noselect
