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
set scrolloff=3
set bs=2
set cursorline
set ignorecase smartcase

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/