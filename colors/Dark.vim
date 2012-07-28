" Vim color file - Dark
" Generated by http://bytefluent.com/vivify 2012-07-27
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "Dark"

hi IncSearch guifg=#ffff00 guibg=#0000ff guisp=#0000ff gui=bold ctermfg=11 ctermbg=21 cterm=bold
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
hi SpecialComment guifg=#DDDD00 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi Typedef guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
"hi Title -- no settings --
hi Folded guifg=#e5e5e5 guibg=#737373 guisp=#737373 gui=NONE ctermfg=254 ctermbg=243 cterm=NONE
hi PreCondit guifg=#ee7ae9 guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
hi Include guifg=#ee7ae9 guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
"hi StatusLineNC -- no settings --
"hi CTagsMember -- no settings --
hi NonText guifg=#cdcd00 guibg=#262626 guisp=#262626 gui=NONE ctermfg=184 ctermbg=235 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
hi Debug guifg=#DDDD00 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#60DD60 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#DDDD00 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
"hi Todo -- no settings --
hi Special guifg=#DDDD00 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
"hi LineNr -- no settings --
"hi StatusLine -- no settings --
hi Normal guifg=#f8f8ff guibg=#333333 guisp=#333333 gui=NONE ctermfg=189 ctermbg=236 cterm=NONE
hi Label guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#88dd88 guibg=#949698 guisp=#949698 gui=NONE ctermfg=114 ctermbg=246 cterm=NONE
hi Search guifg=#000000 guibg=#8db6cd guisp=#8db6cd gui=NONE ctermfg=NONE ctermbg=110 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#DDDD00 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi Statement guifg=#d2b48c guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#87ceeb guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Character guifg=#00ffff guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
"hi Float -- no settings --
hi Number guifg=#FF7070 guibg=NONE guisp=NONE gui=NONE ctermfg=9 ctermbg=NONE cterm=NONE
hi Boolean guifg=#d2b48c guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi Operator guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
hi WarningMsg guifg=#ff0000 guibg=#f8f8ff guisp=#f8f8ff gui=bold ctermfg=196 ctermbg=189 cterm=bold
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
hi Define guifg=#ee7ae9 guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
hi Function guifg=#60DD60 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
"hi FoldColumn -- no settings --
hi PreProc guifg=#ee7ae9 guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#556b2f guibg=#f8f8ff guisp=#f8f8ff gui=NONE ctermfg=101 ctermbg=189 cterm=NONE
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi VertSplit -- no settings --
hi Exception guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Type guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
"hi DiffChange -- no settings --
hi Cursor guifg=#000000 guibg=#00ee00 guisp=#00ee00 gui=NONE ctermfg=NONE ctermbg=10 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=NONE guibg=#cd0000 guisp=#cd0000 gui=NONE ctermfg=NONE ctermbg=160 cterm=NONE
hi PMenu guifg=#dddddd guibg=#545658 guisp=#545658 gui=NONE ctermfg=253 ctermbg=240 cterm=NONE
hi SpecialKey guifg=#87ceeb guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Constant guifg=#FF7070 guibg=NONE guisp=NONE gui=NONE ctermfg=9 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#DDDD00 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi String guifg=#ffa0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
hi Repeat guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#87ceeb guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Structure guifg=#ffa500 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Macro guifg=#ee7ae9 guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=#ffffff guibg=#e000b0 guisp=#e000b0 gui=NONE ctermfg=15 ctermbg=163 cterm=NONE
hi cursorim guifg=#000000 guibg=#aaccff guisp=#aaccff gui=NONE ctermfg=NONE ctermbg=153 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi keyword guifg=#6a5acd guibg=NONE guisp=NONE gui=bold ctermfg=62 ctermbg=NONE cterm=bold
hi htmlstring guifg=#b8860b guibg=NONE guisp=NONE gui=NONE ctermfg=136 ctermbg=NONE cterm=NONE
hi title guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi statementu guifg=#6a5acd guibg=NONE guisp=NONE gui=bold ctermfg=62 ctermbg=NONE cterm=bold
hi attribute guifg=#d02090 guibg=NONE guisp=NONE gui=bold ctermfg=162 ctermbg=NONE cterm=bold
"hi normal -- no settings --
hi preconduit guifg=#702589 guibg=NONE guisp=NONE gui=underline ctermfg=54 ctermbg=NONE cterm=underline
hi underline guifg=#afafff guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi vimmodeline guifg=#5fd75f guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
"hi semicolon -- no settings --
hi pythonimport guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#f00000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
