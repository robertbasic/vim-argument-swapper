function! argumentswapper#ArgumentSwapperSwap()
    if g:argumentswapper_python_version == 3
        python3 swap()
    else
        python swap()
    endif
endfunction

function! argumentswapper#SetupPyImports()
    if g:argumentswapper_python_version == 3
        python3 setup_py_imports()
    else
        python setup_py_imports()
    endif
endfunction
