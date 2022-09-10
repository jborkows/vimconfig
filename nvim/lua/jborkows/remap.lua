vim.cmd [[
filetype plugin on
runtime macros/matchit.vim
fun! TrimWhitespace()
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
endfun
augroup jb
        autocmd!
        autocmd BufWritePre * :call TrimWhitespace()
augroup END

nnoremap  <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap  <silent> [b :bprevious<CR>
nnoremap  <silent> ]b :bnext<CR>
"Gets the folder of command - relative
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
]]
local nnoremap = require("jborkows.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nnoremap("<F5>",":UndotreeToggle<CR>")
