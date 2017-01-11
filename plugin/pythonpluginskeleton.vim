if exists('g:pythonpluginskeleton_plugin_loaded') || &cp
    finish
endif
let g:pythonpluginskeleton_plugin_loaded = 1

let g:pythonpluginskeleton_plugin_path = expand('<sfile>:p:h')

" To setup Python imports
call pythonpluginskeleton#SetupPyImports()

" A command to call
command! -nargs=0 PythonPluginSkeletonCommand call pythonpluginskeleton#PythonPluginSkeletonCommand()
