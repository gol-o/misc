winpos 300 120
set shortmess=I
set guicursor+=a:blinkon0
set guifont=Consolas:h20
set encoding=utf-8 nobomb
set guioptions-=L
set guioptions-=T
set guioptions-=m
set guioptions-=r
set lines=25
set columns=100
set backspace=indent,eol,start
set noeb vb t_vb=
set cindent
set number relativenumber
set ignorecase
set smartcase
set tabstop=4
set expandtab
set shiftwidth=4
set listchars=eol:⌐,trail:ْ,tab:°°
set list
set scrolloff=0
set directory=$HOME\vimfiles\swap
set backupdir=$HOME\vimfiles\backup
set backupcopy=yes
set noswapfile
set nowrap
set path+=\Program\\\ Files\LLVM\lib\clang\3.7.0\include
set path+=\Program\\\ Files\Microsoft\\\ Visual\\\ Studio\2022\Community\VC\Auxiliary\Build
set path+=\Program\\\ Files\Windows\\\ Kits\8.1\Include\um
set path+=\Program\\\ Files\\\ (x86)\Microsoft\\\ Visual\\\ Studio\2019\Community\VC\Auxiliary\Build
set path+=\Program\\\ Files\\\ (x86)\Microsoft\\\ Visual\\\ Studio\2019\Community\VC\Tools\Llvm\bin
set path+=\Program\\\ Files\\\ (x86)\Microsoft\\\ Visual\\\ Studio\2019\Community\VC\Tools\MSVC\14.29.30133\bin\Hostx64\x64
set path+=\Program\\\ Files\\\ (x87)\Windows\\\ Kits\10\Include\10.0.19041.0\um
let $path="\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Auxiliary\\Build;".$path
cd ~/Desktop
filetype on
syntax on
colorscheme codedark
hi LineNr guifg=#888888
au BufEnter * setlocal formatoptions=tq
au BufEnter * silent! lcd %:p:h
au FileType c nnoremap <A-;> :w<Bar>!clang % -o %:r.exe -pedantic -std=c11 -Wall && %:r<CR><CR>
au FileType c nnoremap <A-;> :w<Bar>!vcvars64 && cl % /Fe: %:r.exe /std:c17 /Wall && %:r<CR><CR>
au FileType c nnoremap ;; :w<Bar>!vcvars64 && cl % /Fe: %:r.exe /std:c17 /Wall && %:r<CR><CR>
au FileType c nnoremap ;; :w<Bar>!vcvars64 && cl % /Fe: %:r.exe /std:c17 /W0 && %:r<CR><CR>
au FileType cpp nnoremap <A-;> :w<Bar>!clang++ % -o %:r.exe -std=c++11 && %:r<CR><CR>
au FileType cpp nnoremap <A-;> :w<Bar>!vcvars64 && cl % /Fe: %:r.exe /std:c++20 /Wall && %:r<CR><CR>
au FileType cpp nnoremap ;; :w<Bar>!vcvars64 && cl % /Fe: %:r.exe /std:c++20 /Wall && %:r<CR><CR>
au FileType cpp nnoremap ;; :w<Bar>!vcvars64 && cl % /Fe: %:r.exe /std:c++20 /W0 && %:r<CR><CR>
au FileType cs nnoremap <A-;> :w<Bar>!\Windows\Microsoft.NET\Framework64\v4.0.30319\csc %<CR> :!%:r<CR><CR>
au FileType html nnoremap ;; :w<CR> :!start %<CR>
au FileType vb nnoremap ;; <Home> :w<CR> :!cscript %<CR>
au FileType vb nnoremap <C-k><C-k> 0i'<Space><Esc>
au FileType vb nnoremap <C-k><C-u> 02x
au FileType vb imap <C-k><C-k> <Esc>0i'<Space>
au FileType vb imap <C-k><C-u> <Esc>02xi
au FileType vb :set nocindent
au FileType java nnoremap <A-;> :w<Bar>!javac % && java %:r<CR><CR>
au GUIEnter * set vb t_vb=
command Bd bp|bd#
imap <A-;> <Esc><A-;>
imap <A-=> <Esc><A-=>
imap <A-[> <Esc><A-[>
imap <C-d> <Del>
imap <C-k><C-k> <Esc>0i//<Space>
imap <C-k><C-u> <Esc>03xi
imap <C-n> <Esc><C-n>
imap <C-s> <Esc><C-s>
imap <F7> <Esc><F7>
imap <F8> <Esc><F8>
imap <F9> <Esc><F9>
imap <F10> <Esc><F10>
imap <F11> <Esc><F11>
imap <F12> <Esc><F12>
imap jj <Esc>
imap ;; <Esc>;;
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
nnoremap <A-=> i<Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Space><Esc>
nnoremap <A-f> :w<CR> :% !clang-format -style="{BasedOnStyle: Google, IndentWidth: 4, ColumnLimit: 0, AlignConsecutiveAssignments: Consecutive, SpacesBeforeTrailingComments: 1, SpaceBeforeCpp11BracedList: true}" %<CR>
nnoremap <A-j> :m+<CR>
nnoremap <A-k> :m-2<CR>
nnoremap <C-k><C-k> 0i//<Space><Esc>
nnoremap <C-k><C-u> 03x
nnoremap <C-s> :w<CR>
noremap <C-n> :bn!<CR>
nnoremap <F7> :simalt ~x<CR>
nnoremap <F8> :simalt ~r<CR>
nnoremap <F9> :winpos 300 120<Bar>set guifont=Consolas:h10<Bar>set lines=50<Bar>set columns=200<CR>
nnoremap <F10> :winpos 300 120<Bar>set guifont=Consolas:h20<Bar>set lines=25<Bar>set columns=100<CR>
nnoremap <F11> :winpos 300 120<Bar>set guifont=Consolas:h25<Bar>set lines=21<Bar>set columns=85<CR>
nnoremap <F12> :winpos 300 120<Bar>set guifont=Consolas:h30<Bar>set lines=18<Bar>set columns=70<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap j gj
nnoremap k gk
nnoremap ää :w<Bar>!g++ -o %:r.out % -std=c++11<CR> :!%:r.out<CR><CR>
noremap <Silent> <C-l> :nohls<CR><C-l>
abbreviate ctm System.currentTimeMillis( )
abbreviate loop for (int i = 0; i <; i++)<left><left><left><left><left><left><left>
abbreviate psvm public static void main( String[ ] args ) {<CR>}<Esc>O
abbreviate sep System.err.println( "" );<Esc><Left><Left>
abbreviate slept try {<CR> Thread.sleep( );<CR>}<Esc>hxA catch (Exception ex) {<CR> ex.printStackTrace( );<CR>}<Esc>hx3k$hi
abbreviate sop System.out.println( "" );<Esc><Left><Left>
abbreviate sysout System.out.println( "" );<Esc><Left><Left>
abbreviate tryb try {<CR>} catch (Exception ex) {<CR> ex.printStackTrace( );<CR>}<Esc>hx3ko
abbreviate wsw wscript.stdout.write
abbreviate wswl wscript.stdout.writeline
abbreviate wse wscript.echo
