" auto completion
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" tabular
let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a: :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>
vmap ac :Tabularize /--<CR>

" ghc-mod
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

