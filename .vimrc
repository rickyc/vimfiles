runtime! debian.vim
"set lines=35
"set columns=100

:nmap <Leader>s :source $MYVIMRC
:nmap <Leader>v :e $MYVIMRC
:nmap <c-a> :A<CR>

let g:alternateExtensions_h = "m,c"
let g:alternateExtensions_m = "h"

syntax on

" setting lush syntax to default to lisp
au BufRead,BufNewFile *.lsh setfiletype lisp

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" Pathogen >> http://github.com/tpope/vim-pathogen
call pathogen#runtime_append_all_bundles() 

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
"set cursorcolumn
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
"nmap <S-F7> :NERDTreeClose<CR> "shift-f7
" Store the bookmarks file in perforce
"let NERDTreeBookmarksFile="~/.vim/NERDTreeBookmarks"
"let NERDTreeShowBookmarks=1
let NERDTreeIgnore=[ '\.swp$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
            \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$', '\.DS_STORE$',
            \ '\.embed\.manifest$', '\.embed\.manifest.res$',
            \ '\.intermediate\.manifest$', '^mt.dep$' ]
"

au FileType c setl shiftwidth=2 tabstop=2

if has("gui_running")
	set guifont=DejaVu_Sans_Mono:h10
	set guioptions-=T
	set guioptions-=R
	set guioptions-=L
	set cursorline
	color ir_black
	"color molokai
	"highlight Normal guibg=grey3
	"highlight NonText guibg=grey3
	set transparency=10
	set ofu=syntaxcomplete#Complete
endif 

if !has("gui_running")
	"set t_Co=256
	"let g:CSApprox_loaded = 1
endif
