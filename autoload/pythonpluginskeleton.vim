function! pythonpluginskeleton#PythonPluginSkeletonCommand()
python3 << endpython3
import vim
from pythonpluginskeleton import python_module

python_module.do_something()

endpython3
endfunction

function! pythonpluginskeleton#SetupPyImports()
python3 << endpython3
import os
import sys
import vim

python_plugin_path_loaded = int(vim.eval('exists("g:pythonpluginskeleton_plugin_path_loaded")'))

if python_plugin_path_loaded == 0:
    vim.command("let g:pythonpluginskeleton_plugin_path_loaded=1")

    plugin_path = vim.eval("g:pythonpluginskeleton_plugin_path")
    python_plugin_path = os.path.abspath('%s/../lib' % (plugin_path))
    sys.path.append(python_plugin_path)

endpython3
endfunction
