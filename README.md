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

Installation
============

Using [vim-plug](https://github.com/junegunn/vim-plug):

`Plug 'robertbasic/vim-argument-swapper'`
