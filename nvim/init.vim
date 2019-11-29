g ================================
" ここから Plugin の設定
" ================================
call plug#begin('~/.vim/plugged')

" ファイルをTree表示してくれるやつ
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" ファイルオープンを便利にする
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru<CR>
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

call plug#end()

" ================================
" ここからその他の設定
" ================================
" True color
set termguicolors

" 行数の表示
set number

" クリップボードの共有
set clipboard=unnamed

