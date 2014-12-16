"----------------------------------------------------
" Emacs風関係
"----------------------------------------------------
" コマンド入力中断
imap <silent> <C-g> <ESC><ESC><ESC><CR>i

" 画面分割
imap <silent> <C-x>1 <ESC>:only<CR>i
imap <silent> <C-x>2 <ESC>:sp<CR>i
imap <silent> <C-x>3 <ESC>:vsp<CR>i
imap <silent> <C-x>o <ESC><C-w>w<CR>i
imap <silent> <C-x>p <ESC><C-w>p<CR>i

" 消去、編集
imap <C-k> <ESC>d$i
imap <C-y> <ESC>pi
imap <C-d> <ESC>xi
"
" 移動
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-b>  <Left>
imap <C-f>  <Right>
imap <C-n>  <Down>
imap <C-p>  <UP>

" 画面中央に遷移
imap <C-l>  <ESC>zzi

" ファイル
imap <C-c><C-c>  <ESC>:qa<CR>
imap <C-x><C-c>  <ESC>:qa!<CR>
imap <C-x><C-s>  <ESC>:w<CR>i
imap <C-x><C-w>  <ESC>:w!<CR>i
imap <C-x><C-f>  <ESC>:e
" エラーリカバリ(Undo)
imap <C-x>u <ESC>ui

" その他
map  <C-x><C-e>  :Explore<CR>"
"----------------------------------------------------
"
