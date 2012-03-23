set nocompatible
runtime! debian.vim
"set lines=35
"set columns=100

:nmap <Leader>s :source $MYVIMRC
:nmap <Leader>v :e $MYVIMRC
:nmap <Leader>o :ZoomWin<CR>
:nmap <c-a> :A<CR>


let g:alternateExtensions_h = "m,c"
let g:alternateExtensions_m = "h"

let g:CommandTMaxHeight = 15

if !has("autocmd")
    filetype off
end

" Pathogen >> http://github.com/tpope/vim-pathogen
call pathogen#runtime_append_all_bundles() 
" call pathogen#helptags()

" setting lush syntax to default to lisp
au BufRead,BufNewFile *.lsh setfiletype lisp
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" Vim-rails mvim init menu by default
let g:rails_menu=1

" Execute open rspec buffer
" Thanks to Ian Smith-Heisters
function! RunSpec(args)
 if exists("b:rails_root") && filereadable(b:rails_root . "/script/spec")
   let spec = b:rails_root . "/script/spec"
 else
   let spec = "spec"
 end
 let cmd = ":! " . spec . " % -cfn " . a:args
 execute cmd
endfunction
 
" Mappings
" run one rspec example or describe block based on cursor position
map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)
" run full rspec file
map !S :call RunSpec("")
 
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Automatically highlights lines past 80 characters
augroup vimrc_autocmds
	autocmd BufRead * highlight OverLength ctermbg=darkgrey guibg=#592929
	autocmd BufRead * match OverLength /\%80v.*/
augroup END

let g:ragtag_global_maps = 1

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
    syntax on
	filetype on
	filetype indent on
	filetype plugin on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
" set background=dark
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
"set smartindent
set number
"set backspace=start,eol
set nowrap
set ruler
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) in terminals
set hlsearch

"TagList Plugin
let Tlist_Use_Right_Window = 0

" Nerdtree
nmap <F7> :NERDTreeToggle<CR>

" JSLint Validation
nmap <F6> :JSL<CR>

"nmap <S-F7> :NERDTreeClose<CR> "shift-f7
" Store the bookmarks file in perforce
"let NERDTreeBookmarksFile="~/.vim/NERDTreeBookmarks"
"let NERDTreeShowBookmarks=1
let NERDTreeIgnore=[ '\.swp$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
            \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$', '\.DS_STORE$',
            \ '\.embed\.manifest$', '\.embed\.manifest.res$',
            \ '\.intermediate\.manifest$', '^mt.dep$' ]

au FileType c setl shiftwidth=2 tabstop=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype .*.js setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype .*.php setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=2 sts=2 sw=2
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino


"set grepprg=ack
function! Ack_Search(command)
    cexpr system("ack " . a:command)
endfunction

command! -nargs=+ -complete=file Ack call Ack_Search(<q-args>)
map <leader>a :Ack<space>


let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
color ir_black

if has("gui_running")
	"set guifont=Menlo:h11
	set guifont=DejaVu_Sans_Mono:h11
	set guioptions-=T
	set guioptions-=R
	set guioptions-=L
    set cursorcolumn
	set cursorline
    "irblack settings
	set transparency=10

    "color molokai2
	"set transparency=3
	"color molokai
	"highlight Normal guibg=grey3
	"highlight NonText guibg=grey3
	set ofu=syntaxcomplete#Complete
endif 

if !has("gui_running")
	"set t_Co=256
	"let g:CSApprox_loaded = 1
endif

