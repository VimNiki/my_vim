""""""""""""""""""""
"I'm new for vim ,and now I'm learning vim .
"vim is a cool boy , I gotta use it 
syntax on 

set  hlsearch 
set incsearch 
set autoindent
filetype on
set shiftwidth=4
			    
set softtabstop=4

filetype plugin on
filetype indent on 
set background=light

set number

set linebreak 
set wrap 
set showbreak=>
let  mapleader=','
set scrolloff=4

"autocmd <leader>d  <esc>G:r!date>>%
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
set wildmenu 
"nnoremap j gj 
"nnoremap 0 g0
"nnoremap k gk
"nnoremap $ g$
"noremap 
"nnoremap
"inoremap
"vnoremap

"function! AddHi()
	"normal  HOhello world A vim user
	 "HOhi eturn "we added a message" 
"endfunction
"command !hello AddHi




"set statusline=1  "0, 1 ,2
set statusline=%f\ \ line:%l/%L\ \  

"ignore cases when search 

set ignorecase 
" show the current inputing command "
set showcmd
nnoremap <leader>q :q!<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>z ZZ<CR>
nnoremap <leader>x :x!<CR>
nnoremap <leader>Q :qall!<CR>
nnoremap <leader>W :wall!<CR>
"fast reloading if the .vimrc 
noremap <silent> <leader>ss :source %<cr>
"Fast editing of .vimrc                
set nowrapscan "shutdown search jump to the beging or end when search   
noremap <silent> <leader>ee :vsplit $MYVIMRC<cr>      
"set backspace=indent , eol, start
"when .vimrc is edited , reload it           
set autoindent 
autocmd! bufwritepost .vimrc source ~/.vimrc 
"define the path of vim search file       
set autowrite
set path=.,/usr/local/include,/usr/include
set nowritebackup
"set noswapfile 


set laststatus=1

source $VIMRUNTIME/ftplugin/man.vim
set path+=c:~/.vim/include
"set fileformats=unix,doc

"abbrev #au  #Author:Luoxiao !
"noreabbrev #Au #Author : Lpprince 
"noreabbrev #He #Hello would !
"inoreabbrev #Hei #Hellow would !  
"noremap <up> gk
"noremap <down> gj
set ruler
inoremap <C-J> <esc>:r !date<esc>A
iunmap <c-j>


"omap <C-K> gg

inoremap aa I'm kidding you !
inoreabbrev bb Just for fun again !

inoreabbrev fu function(){

"function! Dateinsert()
"    {
"	<esc>G:r!date
"    
"    }
"endfunction

"autocmd format 
"autocmd [group] {events} {file_pattern } [nested] {command}
"autocmd FileWritePre * call Datainsert()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd : User manual page 355 or :help autocmd for detail 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost *.html set filetype=html
autocmd BufReadPost *.c set filetype=c
autocmd BufReadPost *.php set filetype=php
autocmd BufReadPost *.js set filetype=javascript
autocmd BufReadPost *.css set filetype=css

autocmd BufNewFile *.[ch] normal Oread ~/.vim/skel/skel.c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autogroup  purpose --> for convenience of manage autocmd     
"format 
"autogroup 
"   autocmd ...........
"   autocmd ...........
"autogroup END
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""
"How to delete a autocmd or autogroup ?
"answer--> just set the relative autocmd or autogroup to noting
"example : autocmd! cpprograms  autocmd Filetype 
"
"Notice  do forget adding ! when you use autocmd or autogroup, or  you will
"get a Error warining when you resource you .vimrc file (reload the same
"autpcmd )
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set eventignore   "===> defin events that will be ignore when execute the
"autocmd 
"set eventignore=all " ignore all events ! done do that ~~~*^_^*~~~~~

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"the follow vimrc setting is my execise from the book 
"the hard way to learn vim 
"

"echo '>^_^<'

inoremap <C-U> <esc>vawUi
let maplocalleader="\\"

inoreabbrev @@ Emial : 550745393@qq.com
"inoreabbrev @pp Phone : 15982204010
"inoreabbrev @who Author:Lpprince
"inoreabbrev @date 
"inoreabbrev @smile *>^_^<*
"inoreabbrev @shell #/bin/bash
nnoremap _" <esc>I"<esc>
"nnoremap _# <esc>I#<esc>
noremap L $
noremap H 0
inoremap jk <esc> 
inoremap <esc> <nop>

autocmd BufWritePre, BufRead  *.html :normal gg=G
autocmd FileType  *.js nnoremap <buffer> <localleader>c I//<esc>
autocmd Filetype *.python nnoremap <buffer> <localleader>c I#<esc>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype javascript inoreabbrev iff if()<left>

onoremap p i(
"onoremap b /return<CR>



"--------------------vimscript filetype setting{{{
augroup  filetype_vim
    autocmd!
    autocmd filetype vim setlocal foldmethod=marker
augroup END
"}}}
