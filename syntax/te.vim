if exists("b:current_syntax")
    finish
endif

"SELinux Policy Keywords
syntax keyword teKeyword allow type_transition dontaudit role_transition  
highlight  teKeyword ctermfg=lightred cterm=bold


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
highlight teColon ctermfg=red cterm=bold

syntax match teComma "\v\,"
highlight teComma ctermfg=red cterm=bold

syntax match teSemiColon "\v\;"
highlight teSemiColon ctermfg=red cterm=bold


"Types
syntax keyword teTypes type types
syntax match teTypes "sdfsdfsdfsdfdfs"
highlight teTypes ctermfg=yellow

"Contexts
syntax match teContext "[0-9A-Za-z_\$]*_t\>"
highlight teContext ctermfg=lightyellow
syntax keyword teSelf self
highlight teSelf ctermfg=lightyellow cterm=bold


"class
syntax keyword teClass class
highlight teClass  ctermfg=lightgreen

"type class
syntax keyword teTypeClass file dir capability tcp_socket process lnk_file chr_file sock_file context key fd fifo_file filesystem rawip_socket packet_socket shm sem msg msgq unix_dgram_socket unix_stream_socket
highlight teTypeClass ctermfg=darkgreen

"permissions
syntax keyword tePermission open read getattr write add_name create execmem execute execute_no_trans listen accept signull append remove_name unlink rename search dac_override name_bind name_connect setattr signal setopt net_raw setgid bind getopt gork setsched sigchld setrlimit entrypoint rmdir ioctl setgit setuid dac_read_search sys_resource lock link transition noatsecure siginh rlimitinh fork use \contains sendto connectto create_socket_perms create_steam_socket_perms manage_key_perms chown fowner rw_fifo_file_perms create_shm_perms create_sem_perms create_msgq_perms send receive create_stream_socket_perms rw_file_perms signal_perms setexec sys_ptrace setcurrent setfscreate execstack execheap
highlight tePermission ctermfg=lightgreen

"Roles
syntax match teRole "[0-9A-Za-z_\$]*_r\>"
highlight teRole ctermfg=lightcyan
syntax keyword teRoleDec role roles
highlight teRoleDec ctermfg=darkcyan

"users
syntax match teUser "[0-9A-Za-z_\$]*_u\>"
highlight teUser ctermfg=lightmagenta
syntax keyword teUserDec user users
highlight teUserDec ctermfg=magenta


"Macros
syntax match teMacro "\v(\_^|\s)\h*\("
highlight teMacro ctermfg=grey cterm=bold
syntax match teOpenParen "\v\("
highlight teOpenParen ctermfg=grey cterm=bold
syntax match teCloseParen "\v\)"
highlight teCloseParen ctermfg=grey cterm=bold

"variables
syntax match teVar "\$[0-9]*"
highlight teVar ctermfg=white cterm=bold

"Comments
syntax match teComment "\v#.*$"
highlight link teComment Comment


let b:current_syntax = "te"
