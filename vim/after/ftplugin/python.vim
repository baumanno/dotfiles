" PEP-8 conform settings
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

let python_hightlight_all = 1

nnoremap <leader>y <Esc>:w<CR>:!clear;python %<CR>
nnoremap <leader>Y <Esc>:w<CR>:!clear;python %

" clear trailing whitespace on save
autocmd FileType python autocmd BufWritePre <buffer> %s/\s\+$//e
