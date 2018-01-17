if exists("b:current_syntax")
    finish
endif
"Comments
syntax match teComment "\v#.*$"
highlight link teComment Comment

"SELinux Policy Keywords
syntax keyword teKeyword allow
highlight link teKeyword Function

syntax keyword teTypes type attribute
highlight teTypes ctermfg=blue

"Other syntax chars
syntax match teOpenBracket "\v\{"
syntax match teCloseBracket "\v\}"
highlight teOpenBracket ctermfg=blue
highlight teCloseBracket ctermfg=blue

syntax match teColon "\v\:"
highlight teColon ctermfg=magenta

syntax match teSemiColon "\v\;"
highlight teSemiColon ctermfg=magenta

"Contexts
syntax match teContext "\v\w*_t"
highlight teContext ctermfg=yellow
syntax keyword teSelf self
highlight teSelf ctermfg=lightyellow

"type classes
syntax keyword teTypeClass file dir capability tcp_socket process lnk_file chr_file sock_file fd fifo_file netlink_route_socket unix_dgram_socket filesystem netlink_audit_socket
highlight teTypeClass ctermfg=green

"permissions
syntax keyword tePermission open read getattr write add_name create execmem execute execute_no_trans listen accept signull append remove_name unlink rename search dac_override name_bind name_connect setattr signal ioctl use sigchld transition noatsecure siginh rlimitinh sendto chown setpgid lock setsched setrlimit connect audit_write setuid setgid bind
highlight tePermission ctermfg=darkgreen

"composite permissions
syntax keyword teCompPermission dac_read_search rw_inherited_fifo_file_perms
highlight teCompPermission ctermfg=green

"Macros
syntax match teMacro "\v.*\("
highlight teMacro ctermfg=red
syntax match teCloseParen "\v\)"
highlight teCloseParen ctermfg=red

"inverse
syntax match inverse "\~"
highlight inverse ctermfg=red

let b:current_syntax = "te"
