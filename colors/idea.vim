" Name:     IDEA colorscheme for vim
" Author:   Alexander Saprykin <cutwatercore@gmail.com>
" URL:      https://github.com/cutwater/vim-colors-idea
" License:  MIT

" Colorscheme initialization "{{{
" ----------------------------------------------------------------------------
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name = "idea"
"}}}


" Helper functions "{{{
" ----------------------------------------------------------------------------
function! s:hi(group, style)
    let l:fg = get(a:style, "fg", "NONE")
    let l:bg = get(a:style, "bg", "NONE")
    let l:sp = get(a:style, "sp", "NONE")
    let l:fmt = get(a:style, "fmt", "NONE")

    execute "highlight" a:group
        \ "guifg=" . l:fg
        \ "guibg=" . l:bg
        \ "guisp=" . l:sp
        \ "gui=" . l:fmt
endfunction
"}}}

" Highlighting primitives "{{{
" ----------------------------------------------------------------------------

let s:fg_base       = "#A9B7C6"
let s:fg_gray       = "#808080"

let s:fg_green      = "#6A8759"
let s:fg_yellow     = "#A8C023"
let s:fg_yellow2    = "#BBB529"
let s:fg_orange     = "#CC7832"
let s:fg_red        = ""
let s:fg_magenta    = ""
let s:fg_mauve      = "#B5B6E3"
let s:fg_violet     = ""
let s:fg_lightblue  = "#287BDE"
let s:fg_blue       = "#6897BB"
let s:fg_cyan       = "#9876AA"

let s:bg_base       = "#2B2B2B"
let s:bg_mediumgray = "#BBBBBB"
let s:bg_jet        = "#323232"
let s:bg_red        = "#9E2927"
let s:bg_blue       = "#214283"

let s:bg_ln         = "#313335"
let s:fg_ln         = "#606366"
"}}}

" Basic highlighting "{{{
" ----------------------------------------------------------------------------

" Normal
call s:hi("Normal", {"fg": s:fg_base, "bg": s:bg_base})

" Comment
"	*Comment	any comment
call s:hi("Comment", {"fg": s:fg_gray})

" Constant
"	*Constant	any constant
"	 String		a string constant: "this is a string"
"	 Character	a character constant: 'c', '\n'
"	 Number		a number constant: 234, 0xff
"	 Boolean	a boolean constant: TRUE, false
"	 Float		a floating point constant: 2.3e10
call s:hi("Constant", {"fg": s:fg_blue})

" Identifier
"	*Identifier	any variable name
"	 Function	function name (also: methods for classes)
call s:hi("Identifier", {"fg": s:fg_mauve})

" Statement
"	*Statement	any statement
"	 Conditional	if, then, else, endif, switch, etc.
"	 Repeat		for, do, while, etc.
"	 Label		case, default, etc.
"	 Operator	"sizeof", "+", "*", etc.
"	 Keyword	any other keyword
"	 Exception	try, catch, throw
call s:hi("Statement", {"fg": s:fg_orange, "fmt": "bold"})

" PreProc
"	*PreProc	generic Preprocessor
"	 Include	preprocessor #include
"	 Define		preprocessor #define
"	 Macro		same as Define
"	 PreCondit	preprocessor #if, #else, #endif, etc.
call s:hi("PreProc", {"fg": s:fg_yellow2})

" Type
"	*Type		int, long, char, etc.
"	 StorageClass	static, register, volatile, etc.
"	 Structure	struct, union, enum, etc.
"	 Typedef	A typedef
call s:hi("Type", {"fg": s:fg_orange, "fmt": "bold"})

" Special
"	*Special	any special symbol
"	 SpecialChar	special character in a constant
"	 Tag		you can use CTRL-] on this
"	 Delimiter	character that needs attention
"	 SpecialComment	special things inside a comment
"	 Debug		debugging statements
call s:hi("Special", {})

" Underlined
call s:hi("Underlined", {"fg": s:fg_lightblue, "fmt": "underline"})

" Ignore
call s:hi("Ignore", {})

" Error
call s:hi("Error", {"bg": s:bg_red})

" Todo
call s:hi("Todo", {"fg": s:fg_yellow})

" String
call s:hi("String", {"fg": s:fg_green})

" Number
" call s:hi("Number", {"fg": s:fg_blue})

"}}}

" Basic highlighting "{{{
" ----------------------------------------------------------------------------

call s:hi("Cursor", {"fg": s:bg_base, "bg": s:bg_mediumgray})

call s:hi("CursorLine", {"bg": s:bg_jet})

call s:hi("LineNr", {"fg": s:fg_ln, "bg": s:bg_ln})

call s:hi("CursorLineNr", {"fg": s:fg_ln, "bg": s:bg_ln})

call s:hi("Visual", {"bg": s:bg_blue})
"}}}

" Language: Python "{{{
" ----------------------------------------------------------------------------

call s:hi("PythonInclude", {"fg": s:fg_orange})

"}}}
