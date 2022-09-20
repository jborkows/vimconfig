 vim.api.nvim_command[[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
 vim.api.nvim_command[[let g:go_fmt_command = "goimports"]]
 vim.cmd[[
 let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
 ]]

require('telescope').setup{ defaults = { file_ignore_patterns = {"class", "build"} } } 
