set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set ic
set ai
set number
syn match tab display "\t"
hi link tab Error
syntax on
set hlsearch

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
 
" kill any trailing whitespace on save
" autocmd FileType c,cabal,cpp,haskell,javascript,php,python,readme,text
"   \ autocmd BufWritePre <buffer>
"     \ :call <SID>StripTrailingWhitespaces()
