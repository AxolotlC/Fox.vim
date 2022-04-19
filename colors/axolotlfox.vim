highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark
let g:colors_name="axolotlfox"

function! GuiFor(group, ...)
     let histring = 'hi ' . a:group . ' '

    if strlen(a:1)
        let histring .= 'guibg=' . a:1 . ' '
    endif

    if strlen(a:2)
        let histring .= 'guifg=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let histring .= 'gui=' . a:3 . ' '
    endif

    execute histring
endfunction

GuiFor('Normal', '#000000', '#ffffff', 'bold')
