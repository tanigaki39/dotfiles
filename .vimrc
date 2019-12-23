" UFT-8
set fenc=utf-8

" 行番号を表示
set number

" スワップファイルを作らない
set noswapfile

" バックアップを作らない
set nobackup

" Tab文字を半角スペースにする
set expandtab

" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2

" インデント幅
set shiftwidth=2

" インデントはスマートインデント
set smartindent

" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

" シンタックスハイライト
syntax on

" ビープ音を可視化
set visualbell

" 検索系

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch

" 検索時に最後まで行ったら最初に戻る
set wrapscan

" 検索語をハイライト表示
set hlsearch
