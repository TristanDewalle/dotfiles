hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="perso_diff"

if exists("g:perso_diff_original")
    let s:perso_diff_original = g:perso_diff_original
else
    let s:perso_diff_original = 0
endif

" syntax highlighting groups
"hi Comment	 guifg=#3c3c3c
hi Comment	 guifg=SkyBlue
hi Constant	 guifg=#ffa0a0
hi Identifier	 guifg=palegreen
hi Statement	 guifg=khaki
hi PreProc	 guifg=indianred
hi Type		 guifg=darkkhaki
hi Special	 guifg=navajowhite
"hi Underlined	
hi Ignore 	 guifg=#3c3c3c
"hi Error			
hi Todo		 guifg=orangered guibg=yellow2

highlight DiffAdd    guibg=#005F87
highlight DiffDelete cterm=bold ctermbg=53 guifg=bg guibg=#5F005F
"highlight DiffChange cterm=bold ctermbg=17 guifg=bg guibg=#005F87
highlight DiffChange guifg=#005F87 guibg=#005F87
highlight DiffText   cterm=bold guifg=bg guibg=#005F87
"highlight DiffText   cterm=bold ctermbg=52 guifg=bg guibg=#005F87
"highlight DiffAdd                       guibg=#13354A
"highlight DiffChange      guifg=#89807D guibg=#4C4745
"highlight DiffDelete      guifg=#960050 guibg=#1E0010
"highlight DiffText                      guibg=#4C4745 gui=italic,bold
