if exists("b:current_syntax")
    finish
endif

"SELinux Policy Keywords
syntax keyword teKeyword allow type_transition dontaudit role_transition  
highlight  teKeyword ctermfg=lightred 

"Types
syntax keyword teTypes type types
syntax match teTypes "sdfsdfsdfsdfdfs"
highlight teTypes ctermfg=lightyellow


"AttrDef and Attr
syntax keyword teAttrDef attribute
highlight teAttrDef ctermfg=lightcyan
syntax keyword teAttr sdfsdfsdfsdfsf 
highlight teAttr ctermfg=blue


"Other syntax chars
syntax match teOpenBracket "\v\{"
syntax match teCloseBracket "\v\}"
highlight teOpenBracket ctermfg=blue cterm=bold
highlight teCloseBracket ctermfg=blue cterm=bold

syntax match teColon "\v\:"
highlight teColon ctermfg=magenta

syntax match teSemiColon "\v\;"
highlight teSemiColon ctermfg=magenta

"Contexts
syntax match teContext "[0-9A-Za-z_\$]*_t\>"
highlight teContext ctermfg=lightyellow
syntax keyword teSelf self
highlight teSelf ctermfg=lightyellow cterm=bold



"Roles
syntax match teRole "[0-9A-Za-z_\$]*_r\>"
highlight teRole ctermfg=lightblue
syntax keyword teRoleDec role
highlight teRoleDec ctermfg=darkcyan


"Macros
syntax match teMacro "\v(\n|\s)\h*\("
highlight teMacro ctermfg=grey cterm=bold
syntax match teOpenParen "\v\("
highlight teOpenParen ctermfg=grey cterm=bold
syntax match teCloseParen "\v\)"
highlight teCloseParen ctermfg=grey cterm=bold


"Comments
syntax match teComment "\v#.*$"
highlight link teComment Comment


let b:current_syntax = "fc"
