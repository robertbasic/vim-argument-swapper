if exists('g:argumentswapper_plugin_loaded') || &cp
    finish
endif
let g:argumentswapper_plugin_loaded = 1

let g:argumentswapper_plugin_path = expand('<sfile>:p:h')

" To setup Python imports
call argumentswapper#SetupPyImports()

" A command to call
command! -nargs=0 ArgumentSwapperSwap call argumentswapper#ArgumentSwapperSwap()
