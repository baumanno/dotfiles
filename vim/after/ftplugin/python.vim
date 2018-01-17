" PEP-8 conform settings
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

"match ExtraWhitespace /\s\+$/

let python_hightlight_all = 1

nnoremap <leader>r <Esc>:w<CR>:!clear;python %<CR>
