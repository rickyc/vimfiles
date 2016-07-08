"set nocompatible
"runtime! debian.vim
"set shell=/bin/bash\ -l
"set lines=35
"set columns=100

:nmap <Leader>s :source $MYVIMRC
:nmap <Leader>v :e $MYVIMRC
:nmap <Leader>o :ZoomWin<CR>
:nmap <Leader>t :CtrlP<CR>
:nmap <Leader>q :set transparency=0<CR>
:nmap <Leader>w :set transparency=10<CR>
:nmap <c-a> :A<CR>

"Rubocop
"let g:syntastic_enable_signs=1
"let g:syntastic_ruby_checkers=['rubocop', 'mri']
"let g:vimrubocop_keymap = 0

"nmap <Leader>w :RuboCop<CR>

map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>x :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

nnoremap gp `[v`]

" Tabularize Hackery!
nmap <Leader>z= :Tabularize /=<CR>
vmap <Leader>z= :Tabularize /=<CR>
nmap <Leader>z: :Tabularize /:\zs<CR>
vmap <Leader>z: :Tabularize /:\zs<CR>

" Autocomplete
"let g:neocomplcache_enable_at_startup = 1

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Clear all white space on save
autocmd BufWritePre *.* :%s/\s\+$//e

" Alternative
let g:alternateExtensions_h = "m,c"
let g:alternateExtensions_m = "h"

" Deprecrated
let g:CommandTMaxHeight = 15

" Git Gutter
let g:gitgutter_enabled = 1

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.DS_Store
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|log$\|cookbooks$\|node_modules$\|project_files$\|test$',
      \ 'file': '.exe$|.so$|.dat$'
      \ }
let g:ctrlp_follow_symlinks = 2

if !has("autocmd")
    filetype off
end

" Pathogen >> http://github.com/tpope/vim-pathogen
call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" Setting lush syntax to default to lisp
au BufRead,BufNewFile *.lsh setfiletype lisp
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
au BufNewFile,BufRead *.hjs set syntax=handlebars
au BufNewFile,BufRead *.styl set syntax=sass
au BufNewFile,BufRead .bash_login set syntax=sh
"au FileType javascript call JavaScriptFold()


" Set indentation
au FileType c setl shiftwidth=2 tabstop=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype .*.js setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype .*.php setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=2 sts=2 sw=2
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

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
"set smartindent
"set backspace=start,eol
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set nowrap
set ruler
set showcmd		  " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase	" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden      " Hide buffers when they are abandoned
set mouse=a		  " Enable mouse usage (all modes) in terminals
set hlsearch

"TagList Plugin
let Tlist_Use_Right_Window = 0


" Gundo
nnoremap <F5> :GundoToggle<CR>

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


"set grepprg=ack
function! Ack_Search(command)
    cexpr system("ack " . a:command)
endfunction

command! -nargs=+ -complete=file Ack call Ack_Search(<q-args>)
map <leader>a :Ack<space>


let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
set background=dark
"color ir_black
color Tomorrow-Night-Eighties-modified
"autocmd FileType * colorscheme Tomorrow-Night-Eighties
"autocmd FileType *.jsx colorscheme Tomorrow-Night-Eighties-modified

if has("gui_running")
  "set guifont=Menlo:h11
  set guifont=DejaVu_Sans_Mono:h11
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
  let Powerline_symbols = 'fancy'
  set guioptions-=T
  set guioptions-=r
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

set undodir=~/.vimundo
set undofile
set undolevels=10000 "maximum number of changes that can be undone
set undoreload=5000000 "maximum number lines to save for undo on a buffer reload

if has("gui_running")
    " Enable heavy omni completion.
    highlight clear SignColumn

    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = {}
    endif
    let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
    "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
    let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
    let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
    function! s:check_back_space()"{{{
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~ '\s'
    endfunction"}}
endif

"if executable('coffeetags')
"  let g:tagbar_type_coffee = {
"        \ 'ctagsbin' : 'coffeetags',
"        \ 'ctagsargs' : '',
"        \ 'kinds' : [
"        \ 'f:functions',
"        \ 'o:object',
"        \ ],
"        \ 'sro' : ".",
"        \ 'kind2scope' : {
"        \ 'f' : 'object',
"        \ 'o' : 'object',
"        \ }
"        \ }
"endif
