nnoremap <silent> <F9> :TlistOpen<CR>
nnoremap <silent> <F10> :TlistToggle<CR>
nnoremap <silent> <F7> :NERDTree<CR>
nnoremap <silent> <F8> :NERDTreeToggle<CR>
command! -nargs=1 Silent
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'
nnoremap <F12> :Silent (ctags --verbose=no -R * )<CR>
filetype plugin on
set expandtab
set tabstop=4
set shiftwidth=4
setlocal comments-=://
set ignorecase
set smartcase
syntax on
set tags+=/usr/include/tags
set tags+=/home/martin/devel/cdn-awa
set nu
set nocompatible
