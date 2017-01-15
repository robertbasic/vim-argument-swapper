if exists('g:argumentswapper_plugin_loaded') || &cp
    finish
endif
let g:argumentswapper_plugin_loaded = 1

let g:argumentswapper_plugin_path = expand('<sfile>:p:h')

if !exists('g:argumentswapper_python_version')
    let g:argumentswapper_python_version = 3
endif

if g:argumentswapper_python_version == 3
    exe 'py3file ' . g:argumentswapper_plugin_path . '/../autoload/argumentswapper.py'
else
    exe 'pyfile ' . g:argumentswapper_plugin_path . '/../autoload/argumentswapper.py'
endif

" To setup Python imports
call argumentswapper#SetupPyImports()

" A command to call
command! -nargs=0 ArgumentSwapperSwap call argumentswapper#ArgumentSwapperSwap()
