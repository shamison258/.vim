""" Neobudleの設定

"" filetype設定をoff
filetype plugin indent off

"" NeoBundleを使う
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
	call neobundle#end()
endif

""" NeoBundleでいれたプラグインのリスト

"" Vimacs
NeoBundle 'andrep/vimacs'

" vimで挿入モードの際にemacsバインドを使用する.
if filereadable(expand('~/.vim/etc/vimacs.vim'))
	source ~/.vim/etc/vimacs.vim
endif



"" Unite
NeoBundle 'Shougo/unite.vim'

"" 補完プラグイン
NeoBundle 'Shougo/neocomplete'

" Tabで補完、C-kで展開
if filereadable(expand('~/.vim/etc/neocomplete.vim'))
  source ~/.vim/etc/neocomplete.vim
endif


"" スニペット補完プラグイン
NeoBundle 'Shougo/neosnippet'
" デフォルトsnippetsを使わせてもらう
NeoBundle 'Shougo/neosnippet-snippets'

"" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'

"" 構文チェック
NeoBundle 'scrooloose/syntastic'

"" 括弧の補完
NeoBundle 'Townk/vim-autoclose'

"" git対応
NeoBundle 'tpope/vim-fugitive'

"" themeの設定
NeoBundle 'tomasr/molokai'
colorscheme molokai
syntax on

""" filetype設定をon
filetype plugin indent on

""""""""""""""""""""""""""""""
" 各種オプションの設定
" http://qiita.com/jnchito/items/5141b3b01bced9f7f48f
""""""""""""""""""""""""""""""

" 自動インデント
set autoindent

" 行数表示
set number

" タブの大きさ
set tabstop=4

" Vimが挿入するインデントの幅
set shiftwidth=4

" 行頭行末の左右移動で行をまたぐ
set whichwrap=b,s,h,l,<,>,[,]

" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2

" ステータスラインの表示
	set statusline=%<     " 行が長すぎるときに切り詰める位置
	set statusline+=[%n]  " バッファ番号
	set statusline+=%m    " %m 修正フラグ
	set statusline+=%r    " %r 読み込み専用フラグ

	set statusline+=%h    " %h ヘルプバッファフラグ
	set statusline+=%w    " %w プレビューウィンドウフラグ
	set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fencとffを表示
	set statusline+=%y    " バッファ内のファイルのタイプ

	set statusline+=\     " 空白スペース

if winwidth(0) >= 130
	set statusline+=%F    " バッファ内のファイルのフルパス
else
	set statusline+=%t    " ファイル名のみ
endif

	set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
	set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
	set statusline+=\ \   " 空白スペース2個
	set statusline+=%1l   " 何行目にカーソルがあるか

	set statusline+=/
	set statusline+=%L    " バッファ内の総行数
	set statusline+=,
	set statusline+=%c    " 何列目にカーソルがあるか

	set statusline+=%V    " 画面上の何列目にカーソルがあるか
	set statusline+=\ \   " 空白スペース2個
	set statusline+=%P    " ファイル内の何％の位置にあるか

" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title

" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu

" 小文字のみで検索したときに大文字小文字を無視する
set smartcase

" 不可視文字を表示する
set list

" タブと行の続きを可視化する
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

" 行頭行末に移動
map <Space>h ^
map <Space>l $
