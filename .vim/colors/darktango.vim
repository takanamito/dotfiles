" Vim color file - darktango
" Generated by http://bytefluent.com/vivify 2012-08-03
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "darktango"

hi IncSearch guifg=#fce94f guibg=#c4a000 guisp=#c4a000 gui=NONE ctermfg=227 ctermbg=1 cterm=NONE
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
hi SpecialComment guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Typedef guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi Title guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Folded guifg=#eeeeec guibg=#555753 guisp=#555753 gui=NONE ctermfg=255 ctermbg=240 cterm=NONE
hi PreCondit guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Include guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC guifg=#272334 guibg=#555753 guisp=#555753 gui=NONE ctermfg=236 ctermbg=240 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#555753 guibg=#2e3436 guisp=#2e3436 gui=NONE ctermfg=240 ctermbg=237 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
hi Ignore guifg=#f57900 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Debug guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#2e3436 guisp=#2e3436 gui=NONE ctermfg=NONE ctermbg=237 cterm=NONE
hi Identifier guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi Todo guifg=#eeeeec guibg=#ce5c00 guisp=#ce5c00 gui=NONE ctermfg=255 ctermbg=166 cterm=NONE
hi Special guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi LineNr guifg=#555753 guibg=#2e3436 guisp=#2e3436 gui=NONE ctermfg=240 ctermbg=237 cterm=NONE
hi StatusLine guifg=#eeeeec guibg=#555753 guisp=#555753 gui=NONE ctermfg=255 ctermbg=240 cterm=NONE
hi Normal guifg=#d3d7cf guibg=#2e3436 guisp=#2e3436 gui=NONE ctermfg=151 ctermbg=237 cterm=NONE
hi Label guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#2e3436 guibg=#eeeeec guisp=#eeeeec gui=NONE ctermfg=237 ctermbg=255 cterm=NONE
hi Search guifg=#c4a000 guibg=#fce94f guisp=#fce94f gui=NONE ctermfg=1 ctermbg=227 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Statement guifg=#888a85 guibg=NONE guisp=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#555753 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi Character guifg=#babdb6 guibg=NONE guisp=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE
"hi Float -- no settings --
hi Number guifg=#babdb6 guibg=NONE guisp=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE
hi Boolean guifg=#888a85 guibg=NONE guisp=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE
hi Operator guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#212628 guisp=#212628 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
"hi Union -- no settings --
"hi TabLineFill -- no settings --
hi Question guifg=#aabbcc guibg=NONE guisp=NONE gui=NONE ctermfg=146 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#fa8072 guibg=NONE guisp=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
hi ModeMsg guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
"hi CursorColumn -- no settings --
hi Define guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Function guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#555753 guibg=#2e3436 guisp=#2e3436 gui=NONE ctermfg=240 ctermbg=237 cterm=NONE
hi PreProc guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#ce5c00 guibg=#fcaf3e guisp=#fcaf3e gui=NONE ctermfg=166 ctermbg=215 cterm=NONE
hi MoreMsg guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit guifg=#2e3436 guibg=#555753 guisp=#555753 gui=NONE ctermfg=237 ctermbg=240 cterm=NONE
hi Exception guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi Type guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
"hi DiffChange -- no settings --
hi Cursor guifg=#2e3436 guibg=#babdb6 guisp=#babdb6 gui=NONE ctermfg=237 ctermbg=250 cterm=NONE
"hi SpellLocal -- no settings --
"hi Error -- no settings --
hi PMenu guifg=#555753 guibg=#babdb6 guisp=#babdb6 gui=NONE ctermfg=240 ctermbg=250 cterm=NONE
hi SpecialKey guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi Constant guifg=#babdb6 guibg=NONE guisp=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi String guifg=#babdb6 guibg=NONE guisp=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#555753 guisp=#555753 gui=NONE ctermfg=NONE ctermbg=240 cterm=NONE
hi MatchParen guifg=#2e3436 guibg=#babdb6 guisp=#babdb6 gui=NONE ctermfg=237 ctermbg=250 cterm=NONE
"hi LocalVariable -- no settings --
hi Repeat guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#bbd0df guibg=NONE guisp=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
hi Structure guifg=#ce5c00 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi Macro guifg=#eeeeec guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Underlined guifg=#20b0eF guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
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
hi lcursor guifg=#000000 guibg=#a0a0c0 guisp=#a0a0c0 gui=NONE ctermfg=NONE ctermbg=103 cterm=NONE
hi cursorim guifg=NONE guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=NONE ctermbg=7 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#e7e77f guibg=#45637f guisp=#45637f gui=bold ctermfg=186 ctermbg=66 cterm=bold
hi user1 guifg=#999933 guibg=#45637f guisp=#45637f gui=bold ctermfg=143 ctermbg=66 cterm=bold
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi match guifg=#0000ff guibg=#ffff00 guisp=#ffff00 gui=bold ctermfg=21 ctermbg=11 cterm=bold
hi cream_showmarkshl guifg=#000000 guibg=#aacc77 guisp=#aacc77 gui=bold ctermfg=NONE ctermbg=150 cterm=bold
hi user4 guifg=#33cc99 guibg=#45637f guisp=#45637f gui=bold ctermfg=79 ctermbg=66 cterm=bold
hi user3 guifg=#000000 guibg=#45637f guisp=#45637f gui=bold ctermfg=NONE ctermbg=66 cterm=bold
hi badword guifg=#ff9999 guibg=#003333 guisp=#003333 gui=NONE ctermfg=210 ctermbg=23 cterm=NONE
hi char guifg=#d0e080 guibg=#000000 guisp=#000000 gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
