# vim-monokai-tasty.vim

Monokai forever! :tada: Inspired by Sublime Text's interpretation of monokai, this colour scheme makes use of cterm color numbers to support VIM running on a wide range of systems.
It has been customised for Javascript highlighting, but works for all languages.

## Installation

:electric_plug: I recommend using [Plug](https://github.com/junegunn/vim-plug).

Add the following to your `.vimrc` and run `PlugInstall`

```javascript
Plug 'patstockwell/vim-monokai-tasty'
Plug 'pangloss/vim-javascript'
```

A few optional extras if you write React
```javascript
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components'
```

## Use

Add to your `.vimrc`:

```
colorscheme vim-monokai-tasty
```

## Screen shots

![](./example1.png)
![](./example2.png)
![](./example3.png)

## Dependencies
This plugin works best with a terminal that can render italic text. It will work just fine on terminals that can't, the italic text will appear in inverted colours (black text on blue background for example).
This colour scheme also makes use of syntax definitions from [`vim/pangloss`](https://github.com/pangloss/vim-javascript). The _vim/panglass_ syntax file for javascript is a dependency for the _vim-monokai-tasty_ colour scheme.

