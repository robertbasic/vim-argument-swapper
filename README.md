vim-argument-swapper
==========================

A VIM plugin to swap 2 arguments in a method call/definition.

Usage
=====

Put cursor over the first argument, `:ArgumentSwapperSwap`, done.

Map it to a leader shortcut, for example:

``` vim
map <leader>as :ArgumentSwapperSwap<cr>
```

Why?
====

To make it easy to turn:

``` php
in_array($haystack, $needle);
```

into:

``` php
in_array($needle, $haystack);
```



Requirements
============

VIM must be compiled with Python3 support.

Add the following to the top of your `.vimrc` file, so VIM is "tricked" in using Python3.

``` vim
" Force loading python3
if has('python3')
endif
```

NOTE: this can break plugins
Installation
============

Using [vim-plug](https://github.com/junegunn/vim-plug):

`Plug 'robertbasic/vim-argument-swapper'`
