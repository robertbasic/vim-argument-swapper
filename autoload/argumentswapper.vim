function! argumentswapper#ArgumentSwapperSwap()
python3 << endpython3
import vim
from argumentswapper import swapper

(row, column) = vim.current.window.cursor
line = vim.current.line
new_line = swapper.swap(line, column)
vim.current.buffer[row - 1] = new_line

endpython3
endfunction

function! argumentswapper#SetupPyImports()
python3 << endpython3
import os
import sys
import vim

python_plugin_path_loaded = int(vim.eval('exists("g:argumentswapper_plugin_path_loaded")'))

if python_plugin_path_loaded == 0:
    vim.command("let g:argumentswapper_plugin_path_loaded=1")

    plugin_path = vim.eval("g:argumentswapper_plugin_path")
    python_plugin_path = os.path.abspath('%s/../lib' % (plugin_path))
    sys.path.append(python_plugin_path)

endpython3
endfunction
