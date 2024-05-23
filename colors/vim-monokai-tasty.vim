" Vim color file
"
" Author: Patrick Stockwell
" Email: mail@deciphr.net
"

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'vim-monokai-tasty'

" Highlight function helper {{{
function! Highlight(group, colour)
  let l:foreground = exists('a:colour.fg')
        \ ? ' ctermfg=' . a:colour.fg.cterm . ' guifg=' . a:colour.fg.gui
        \ : ''
  let l:background = exists('a:colour.bg')
        \ ? ' ctermbg=' . a:colour.bg.cterm . ' guibg=' . a:colour.bg.gui
        \ : ''
  let l:style = exists('a:colour.style')
        \ ? ' cterm=' . a:colour.style.cterm . ' gui=' . a:colour.style.gui
        \ : ''
  let l:highlight_command = 'hi '
        \ . a:group . l:foreground . l:background . l:style
  exec l:highlight_command
endfunction
" }}}

" Colours {{{
let s:purple = { 'cterm': 141, 'gui': '#AF87FF' }
let s:light_green = { 'cterm': 148, 'gui': '#A4E400' }
let s:light_blue = { 'cterm': 81, 'gui': '#62D8F1' }
let s:magenta = { 'cterm': 197, 'gui': '#FC1A70' }
let s:orange = { 'cterm': 208, 'gui': '#FF9700' }

let s:off_white = { 'cterm': 251, 'gui': '#CCCCCC' }
let s:white = { 'cterm': 231, 'gui': '#FFFFFF' }
let s:black = { 'cterm': 0, 'gui': '#000000' }

let s:danger = { 'cterm': 197, 'gui': '#FF005F' }
let s:dark_highlight = { 'cterm': 0, 'gui': '#0B0E10' }

" Git diff colours.
let s:diff_delete_fg = { 'cterm': 1, 'gui': '#5F0000' }
let s:diff_delete_bg = { 'cterm': 52, 'gui': '#3B0E10' }
let s:dark_green = { 'cterm': 22, 'gui': '#0f3315' }
let s:diff_text = { 'cterm': 33, 'gui': '#3B3E54' }
let s:diff_change = { 'cterm': 60, 'gui': '#252b3e' }

let s:none = { 'cterm': 'NONE', 'gui': 'NONE' }
let s:bold = { 'cterm': 'bold', 'gui': 'bold' }
let s:underline = { 'cterm': 'underline', 'gui': 'underline' }
let s:bold_underline = { 'cterm': 'bold,underline', 'gui': 'bold,underline' }
" }}}

" Config - vim_monokai_tasty_machine_tint {{{
if !exists('g:vim_monokai_tasty_machine_tint')
  let g:vim_monokai_tasty_machine_tint = 0
endif

if g:vim_monokai_tasty_machine_tint == 1
  " Monokai 'machine'
  " Monochrome in order light -> dark
  let s:light_grey = { 'cterm': 250, 'gui': '#8C9497' }
  let s:grey = { 'cterm': 245, 'gui': '#576266' }
  let s:dark_grey = { 'cterm': 59, 'gui': '#354044' }
  let s:darker_grey = { 'cterm': 238, 'gui': '#242F35' }
  let s:light_charcoal = { 'cterm': 235, 'gui': '#1A2225' }
  let s:charcoal = { 'cterm': 233, 'gui': '#171C20' }
  let s:yellow = { 'cterm': 228, 'gui': '#F6F557' }
else
  " Monokai classic
  " Monochrome in order light -> dark
  let s:light_grey = { 'cterm': 250, 'gui': '#BCBCBC' }
  let s:grey = { 'cterm': 245, 'gui': '#8A8A8A' }
  let s:dark_grey = { 'cterm': 59, 'gui': '#5F5F5F' }
  let s:darker_grey = { 'cterm': 238, 'gui': '#444444' }
  let s:light_charcoal = { 'cterm': 238, 'gui': '#2B2B2B' }
  let s:charcoal = { 'cterm': 235, 'gui': '#262626' }
  let s:yellow = { 'cterm': 228, 'gui': '#FFFF87' }
endif

" }}}

" Config - vim_monokai_tasty_italic {{{
" If user has not set italics, set based on terminal support
if !exists('g:vim_monokai_tasty_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:vim_monokai_tasty_italic = 1
  else
    let g:vim_monokai_tasty_italic = 0
  endif
endif

if g:vim_monokai_tasty_italic
  let s:italic = { 'cterm': 'italic', 'gui': 'italic' }
else
  let s:italic = { 'cterm': 'NONE', 'gui': 'NONE' }
endif
" }}}

" Config - vim_monokai_tasty_highlight_active_window {{{
if !exists('g:vim_monokai_tasty_highlight_active_window')
  let g:vim_monokai_tasty_highlight_active_window = 0
endif
if g:vim_monokai_tasty_highlight_active_window == 1
  call Highlight('NormalNC', { 'fg': s:off_white, 'bg': s:light_charcoal, 'style': s:none })
endif
" }}}

" Base highlights {{{
call Highlight('Normal', { 'fg': s:white, 'bg': s:charcoal, 'style': s:none })
call Highlight('Cursor', { 'fg': s:charcoal, 'bg': s:light_blue, 'style': s:none })
call Highlight('lCursor', { 'fg': s:charcoal, 'bg': s:light_blue, 'style': s:none })
call Highlight('CursorIM', { 'fg': s:charcoal, 'bg': s:light_blue, 'style': s:none })
call Highlight('TermCursor', { 'fg': s:charcoal, 'bg': s:light_blue, 'style': s:none })
call Highlight('TermCursorNC', { 'fg': s:charcoal, 'bg': s:light_blue, 'style': s:none })
call Highlight('Special', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Title', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('EndOfBuffer', { 'fg': s:darker_grey, 'bg': s:none, 'style': s:none })
call Highlight('WinSeparator', { 'fg': s:darker_grey, 'bg': s:none, 'style': s:none })
call Highlight('Error', { 'fg': s:white, 'bg': s:danger, 'style': s:none })
call Highlight('ErrorMsg', { 'fg': s:white, 'bg': s:danger, 'style': s:none })
call Highlight('WarningMsg', { 'fg': s:white, 'bg': s:danger, 'style': s:none })
call Highlight('SpellBad', { 'fg': s:white, 'bg': s:danger, 'style': s:none })
call Highlight('SpellRare', { 'fg': s:white, 'bg': s:danger, 'style': s:none })
call Highlight('SpellCap', { 'fg': s:charcoal, 'bg': s:orange, 'style': s:italic })
call Highlight('SpellLocal', { 'fg': s:charcoal, 'bg': s:orange, 'style': s:italic })
call Highlight('CursorLineNR', { 'fg': s:yellow, 'style': s:none })
call Highlight('CursorColumn', { 'fg': s:none, 'bg': s:light_charcoal, 'style': s:none })
call Highlight('ColorColumn', { 'fg': s:none, 'bg': s:light_charcoal, 'style': s:none })
call Highlight('Conceal', { 'fg': s:none, 'bg': s:none, 'style': s:none })
call Highlight('CursorLine', { 'bg': s:light_charcoal, 'style': s:none })
call Highlight('LineNrBe', { 'fg': s:light_green, 'style': s:none })
call Highlight('Type', { 'fg': s:none, 'bg': s:none, 'style': s:none })
call Highlight('Visual', { 'fg': s:none, 'bg': s:dark_grey, 'style': s:none })
call Highlight('TabLine', { 'fg': s:light_grey, 'bg': s:dark_grey, 'style': s:underline })
call Highlight('Whitespace', { 'fg': s:dark_grey, 'bg': s:none, 'style': s:none })
call Highlight('TabLineSel', { 'fg': s:none, 'bg': s:charcoal, 'style': s:bold })
call Highlight('SignColumn', { 'fg': s:none, 'bg': s:none, 'style': s:none })
call Highlight('NonText', { 'fg': s:darker_grey, 'bg': s:none, 'style': s:none })
call Highlight('TabLineFill', { 'fg': s:none, 'bg': s:darker_grey, 'style': s:none })
call Highlight('LineNr', { 'fg': s:dark_grey, 'bg': s:none, 'style': s:none })
call Highlight('VertSplit', { 'fg': s:darker_grey, 'bg': s:charcoal, 'style': s:none })
call Highlight('StatusLine', { 'fg': s:light_grey, 'bg': s:charcoal, 'style': s:none })
call Highlight('StatusLineNC', { 'fg': s:grey, 'bg': s:darker_grey, 'style': s:none })
call Highlight('Exception', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold })
call Highlight('MatchParen', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold_underline })
call Highlight('Include', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Conditional', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Define', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Debug', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Delimiter', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Keyword', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Macro', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Operator', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('PreProc', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Statement', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Repeat', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('DiffChange', { 'fg': s:none, 'bg': s:diff_change, 'style': s:none })
call Highlight('DiffText', { 'fg': s:none, 'bg': s:diff_text, 'style': s:bold })
call Highlight('DiffDelete', { 'fg': s:diff_delete_fg, 'bg': s:diff_delete_bg, 'style': s:none })
call Highlight('DiffAdd', { 'fg': s:none, 'bg': s:dark_green, 'style': s:none })
call Highlight('diffAdded', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('diffRemoved', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('diffFile', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('diffLine', { 'fg': s:purple, 'bg': s:none, 'style': s:bold })
call Highlight('diffIndexLine', { 'fg': s:purple, 'bg': s:none, 'style': s:bold })
call Highlight('diffSubname', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('gitcommitHeader', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('gitcommitSelectedFile', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('gitcommitSummary', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('gitcommitOverflow', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('SpecialKey', { 'fg': s:dark_grey, 'bg': s:none, 'style': s:none })
call Highlight('IncSearch', { 'fg': s:black, 'bg': s:purple, 'style': s:bold_underline })
call Highlight('Search', { 'fg': s:black, 'bg': s:yellow, 'style': s:bold })
call Highlight('CurSearch', { 'fg': s:black, 'bg': s:purple, 'style': s:bold })
call Highlight('Identifier', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('Question', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('StorageClass', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('Structure', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('Typedef', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('Function', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('PreCondit', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Constant', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Directory', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Tag', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Boolean', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Character', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Float', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Number', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Folded', { 'fg': s:grey, 'bg': s:none, 'style': s:none })
call Highlight('FoldColumn', { 'fg': s:grey, 'bg': s:none, 'style': s:none })
call Highlight('Comment', { 'fg': s:grey, 'bg': s:none, 'style': s:italic })
call Highlight('Label', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('String', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('Todo', { 'fg': s:yellow, 'bg': s:dark_grey, 'style': s:bold })
call Highlight('Underlined', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
call Highlight('Pmenu', { 'fg': s:light_blue, 'bg': s:dark_highlight, 'style': s:none })
call Highlight('PmenuSel', { 'fg': s:yellow, 'bg': s:darker_grey, 'style': s:none })
call Highlight('PmenuSbar', { 'fg': s:none, 'bg': s:grey, 'style': s:none })
call Highlight('PmenuThumb', { 'fg': s:dark_grey, 'bg': s:white, 'style': s:none })
call Highlight('MoreMsg', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('Substitute', { 'fg': s:black, 'bg': s:light_green, 'style': s:none })
call Highlight('ModeMsg', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
" }}}

" Custom Status line {{{
call Highlight('StatusLineBase', { 'fg': s:white, 'bg': s:darker_grey, 'style': s:none })
call Highlight('StatusLineGitBranch', { 'fg': s:white, 'bg': s:dark_grey, 'style': s:italic })
call Highlight('StatusLineModifiedFile', { 'fg': s:orange, 'bg': s:darker_grey, 'style': s:none })
call Highlight('StatusLineReadOnlyFile', { 'fg': s:grey, 'bg': s:darker_grey, 'style': s:none })
call Highlight('StatusLineSeparatorGitBranch', { 'fg': s:dark_grey, 'bg': s:darker_grey, 'style': s:none })
" Normal mode
call Highlight('StatusLineSeparatorNormalDark', { 'fg': s:light_green, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineSeparatorNormal', { 'fg': s:light_green, 'bg': s:darker_grey, 'style': s:none })
call Highlight('StatusLineNormalMode', { 'fg': s:charcoal, 'bg': s:light_green })
call Highlight('StatusLineNormalModeBold', { 'fg': s:charcoal, 'bg': s:light_green, 'style': s:bold })
"Visual mode
call Highlight('StatusLineSeparatorVisualDark', { 'fg': s:purple, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineSeparatorVisual', { 'fg': s:purple, 'bg': s:darker_grey, 'style': s:none })
call Highlight('StatusLineVisualMode', { 'fg': s:charcoal, 'bg': s:purple })
call Highlight('StatusLineVisualModeBold', { 'fg': s:charcoal, 'bg': s:purple, 'style': s:bold })
" Insert mode
call Highlight('StatusLineSeparatorInsertDark', { 'fg': s:yellow, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineSeparatorInsert', { 'fg': s:yellow, 'bg': s:darker_grey, 'style': s:none })
call Highlight('StatusLineInsertMode', { 'fg': s:charcoal, 'bg': s:yellow })
call Highlight('StatusLineInsertModeBold', { 'fg': s:charcoal, 'bg': s:yellow, 'style': s:bold })
" Command mode
call Highlight('StatusLineSeparatorCommandDark', { 'fg': s:light_blue, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineSeparatorCommand', { 'fg': s:light_blue, 'bg': s:darker_grey, 'style': s:none })
call Highlight('StatusLineCommandMode', { 'fg': s:charcoal, 'bg': s:light_blue })
call Highlight('StatusLineCommandModeBold', { 'fg': s:charcoal, 'bg': s:light_blue, 'style': s:bold })

" }}}

" Quickfix window {{{
call Highlight('qfFileName', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('qfLineNr', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('qfSeparator', { 'fg': s:light_grey, 'bg': s:none, 'style': s:none })
call Highlight('QuickFixLine', { 'fg': s:light_green, 'bg': s:light_charcoal, 'style': s:bold })
" }}}

" Javascript {{{
call Highlight('Noise', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('jsParensIfElse', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsParensRepeat', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsParensSwitch', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsParensCatch', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsArrowFunction', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('jsArrowFuncArgs', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('jsBrackets', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsFuncBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsClassBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsIfElseBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsTryCatchBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsModuleBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsObjectBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsFinallyBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsRepeatBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsSwitchBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsTemplateBraces', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsDestructuringBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsFuncName', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('jsFuncCall', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('jsClassFuncName', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('jsArguments', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('jsFuncArgs', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('jsClassKeyword', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('jsThis', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('jsUndefined', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsNull', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsParens', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsFuncParens', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsGlobalObjects', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('jsFunction', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('jsClassMethodType', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('jsObjectKey', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsBlockLabel', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsObjectColon', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('jsObjectSeparator', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsNoise', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsGlobalNodeObjects', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('jsFutureKeys', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('EcmaScriptTemplateStrings', { 'fg': s:yellow, 'bg': s:none, 'style': s:italic })

highlight default link jsComment              Comment
highlight default link jsEnvComment           Comment
highlight default link jsCommentTodo          Todo
highlight default link jsString               String
highlight default link jsObjectKeyString      String
highlight default link jsTemplateString       String
highlight default link jsObjectStringKey      String
highlight default link jsClassStringKey       String
highlight default link jsStorageClass         StorageClass
highlight default link jsNumber               Number
highlight default link jsImport               Include
highlight default link jsExport               Include
highlight default link jsModuleComma          Operator
highlight default link jsTaggedTemplate       StorageClass
highlight default link jsTernaryIfOperator    Operator
highlight default link jsRegexpString         String
highlight default link jsRegexpBoundary       SpecialChar
highlight default link jsRegexpQuantifier     SpecialChar
highlight default link jsRegexpOr             Conditional
highlight default link jsRegexpMod            SpecialChar
highlight default link jsRegexpBackRef        SpecialChar
highlight default link jsRegexpGroup          String
highlight default link jsRegexpCharClass      Character
highlight default link jsCharacter            Character
highlight default link jsPrototype            Special
highlight default link jsConditional          Conditional
highlight default link jsBranch               Conditional
highlight default link jsLabel                Label
highlight default link jsReturn               Statement
highlight default link jsRepeat               Repeat
highlight default link jsDo                   Repeat
highlight default link jsStatement            Statement
highlight default link jsException            Exception
highlight default link jsTry                  Exception
highlight default link jsFinally              Exception
highlight default link jsCatch                Exception
highlight default link jsAsyncKeyword         Keyword
highlight default link jsForAwait             Keyword
highlight default link jsObjectFuncName       Function
highlight default link jsError                Error
highlight default link jsParensError          Error
highlight default link jsOperatorKeyword      jsOperator
highlight default link jsOperator             Operator
highlight default link jsOf                   Operator
highlight default link jsExtendsKeyword       Keyword
highlight default link jsSuper                Constant
highlight default link jsNan                  Number
highlight default link jsFloat                Float
highlight default link jsBooleanTrue          Boolean
highlight default link jsBooleanFalse         Boolean
highlight default link jsDot                  Noise
highlight default link jsClassNoise           Noise
highlight default link jsGenerator            jsFunction
highlight default link jsSpecial              Special
highlight default link jsExceptions           Constant
highlight default link jsBuiltins             Constant
highlight default link jsExportDefault        StorageClass
highlight default link jsExportDefaultGroup   jsExportDefault
highlight default link jsModuleAs             Include
highlight default link jsModuleAsterisk       Noise
highlight default link jsFrom                 Include
highlight default link jsDecorator            Special
highlight default link jsDecoratorFunction    Function
highlight default link jsParensDecorator      jsParens
highlight default link jsFuncArgOperator      jsFuncArgs
highlight default link jsClassProperty        jsObjectKey
highlight default link jsObjectShorthandProp  jsObjectKey
highlight default link jsSpreadOperator       Operator
highlight default link jsRestOperator         Operator
highlight default link jsRestExpression       jsFuncArgs
highlight default link jsSwitchColon          Noise
highlight default link jsObjectMethodType     Type
highlight default link jsClassDefinition      jsFuncName
highlight default link jsBlockLabel           Identifier
highlight default link jsBlockLabelKey        jsBlockLabel
highlight default link jsDestructuringProperty   jsFuncArgs
highlight default link jsDestructuringAssignment jsObjectKey
highlight default link jsDestructuringNoise      Noise
highlight default link jsCommentFunction      jsComment
highlight default link jsCommentClass         jsComment
highlight default link jsCommentIfElse        jsComment
highlight default link jsCommentRepeat        jsComment
highlight default link jsDomErrNo             Constant
highlight default link jsDomNodeConsts        Constant
highlight default link jsDomElemAttrs         Label
highlight default link jsDomElemFuncs         PreProc
highlight default link jsHtmlEvents           Special
highlight default link jsHtmlElemAttrs        Label
highlight default link jsHtmlElemFuncs        PreProc
highlight default link jsCssStyles            Label
" }}}

" HTML {{{
call Highlight('htmlTag', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('htmlTagN', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('htmlEndTag', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('htmlArg', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
" }}}

" JSX {{{
call Highlight('jsxTagName', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsxComponentName', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('jsxEqual', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('jsxPunct', { 'fg': s:grey, 'bg': s:none, 'style': s:none })
call Highlight('jsxCloseString', { 'fg': s:grey, 'bg': s:none, 'style': s:none })
call Highlight('jsxAttrib', { 'fg': s:white, 'bg': s:none, 'style': s:italic })
" }}}

" Typescript {{{
call Highlight('typescriptCastKeyword', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptImport', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptExport', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptCall', { 'fg': s:white, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptClassName', { 'fg': s:light_green })
call Highlight('typescriptClassHeritage', { 'fg': s:light_green })
call Highlight('typescriptArrowFuncArg', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptAliasDeclaration', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('typescriptAliasKeyword', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptInterfaceKeyword', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptTypeReference', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('typescriptPredefinedType', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptMember', { 'fg': s:white, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptObjectColon', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTypeAnnotation', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTernaryOp', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDestructureVariable', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptObjectLabel', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTypeBrackets', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptVariable', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptArrowFunc', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptFuncType', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptMemberOptionality', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptFuncTypeArrow', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptMathStaticMethod', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptJSONStaticMethod', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDOMStorageMethod', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDateMethod', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptRegExpMethod', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptArrayMethod', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptHeadersMethod', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptHeadersMethod', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptURLUtilsProp', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptBOMHistoryProp', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptOperator', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptGlobalMathDot', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDotNotation', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptGlobalJSONDot', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptBinaryOp', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptUnaryOp', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptAssign', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptOptionalMark', { 'fg': s:purple, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptTemplateSB', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTestGlobal', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptPaymentShippingOptionProp', { 'fg': s:none, 'bg': s:none, 'style': s:none })
call Highlight('typescriptNull', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('typescriptType', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptEndColons', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptLabel', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptLogicSymbols', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptParens', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDotNotation', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptInterpolationDelimiter', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('typescriptExceptions', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold })
call Highlight('typescriptFuncKeyword', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptGlobalNodeObjects', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptGlobalObjects', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptArrowFunction', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptFuncCall', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })

" TypeScript Treesitter
call Highlight('typescriptTSBoolean', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSVariable', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSConstructor', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSPunctDelimiter', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSPunctBracket', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSConstant', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSTypeBuiltin', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptTSType', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSKeyword', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptTSProperty', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSParameter', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
" }}}

" Scala {{{
call Highlight('scalaExternal', { 'fg': s:light_blue, 'style': s:italic })
call Highlight('scalaKeyword', { 'fg': s:magenta, 'style': s:italic })
call Highlight('scalaTypeDeclaration', { 'fg': s:light_blue, 'style': s:italic })
call Highlight('scalaCapitalWord', { 'fg': s:light_blue })
call Highlight('scalaInstanceDeclaration', { 'fg': s:light_green })
call Highlight('scalaSpecial', { 'fg': s:purple })
call Highlight('scalaBoolean', { 'fg': s:purple })
call Highlight('scalaRepeat', { 'fg': s:orange })
call Highlight('scalaConditional', { 'fg': s:magenta })
call Highlight('scalaExceptionn', { 'fg': s:magenta, 'style': s:bold })
call Highlight('scalaPackage', { 'fg': s:light_blue, 'style': s:italic })
call Highlight('scalaPackageDeclaration', { 'fg': s:light_green })
call Highlight('scalaAssignment', { 'fg': s:magenta })
call Highlight('scalaTodo', { 'fg': s:yellow, 'bg': s:darker_grey, 'style': s:bold_underline })
call Highlight('scalaUnimplemented', { 'fg': s:magenta, 'bg': s:none, 'style': s:italic })
" }}}

" GraphQL {{{
call Highlight('graphqlStructure', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('graphqlBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('graphqlConstant', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('graphqlType', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
" }}}

" Vim {{{
call Highlight('vimParenSep', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('vimOperParen', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('vimUserFunc', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('vimFunction', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
" }}}

" XML {{{
highlight default link xmlTodo   Todo
call Highlight('xmlTag', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('xmlTagName', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('xmlEndTag', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('xmlEqual', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
" }}}

" JSON {{{
call Highlight('jsonKeyword', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('jsonString', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
" }}}

" Clojure {{{
call Highlight('clojureParen', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('clojureDefine', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
call Highlight('clojureMacro', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
" }}}

" R language {{{
call Highlight('rFunction', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
" }}}

" C/C++ {{{
call Highlight('cType', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
" }}}

" NERDTree {{{
call Highlight('NERDTreeClosable', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('NERDTreeOpenable', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('NERDTreeDirSlash', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('NERDTreeFile', { 'fg': s:none, 'bg': s:none, 'style': s:none })
" }}}

" Ruby {{{
call Highlight('rubyStringDelimiter', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
" }}}

" Calendar {{{
call Highlight('CalNavi', { 'fg': s:light_blue, 'bg': s:none, 'style': s:bold_underline })
call Highlight('CalToday', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold })
call Highlight('CalSaturday', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('CalSunday', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('CalHeader', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('CalRuler', { 'fg': s:grey, 'bg': s:darker_grey, 'style': s:bold })
" }}}

" Markdown {{{
call Highlight('markdownCode', { 'fg': s:purple, 'bg': s:none, 'style': s:bold })
call Highlight('markdownCodeDelimiter', { 'fg': s:light_green })
call Highlight('markdownLinkTextDelimiter', { 'fg': s:light_blue })
call Highlight('markdownLinkDelimiter', { 'fg': s:light_blue })
call Highlight('markdownUrl', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('markdownListMarker', { 'fg': s:light_blue })

" Markdown https://github.com/plasticboy/vim-markdown
call Highlight('mkdHeading', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('mkdURL', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('mkdCode', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('mkdCodeStart', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('mkdCodeEnd', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('mkdDelimiter', { 'fg': s:light_blue })
call Highlight('mkdListItemCheckbox', { 'fg': s:light_blue })
call Highlight('mkdCodeDelimiter', { 'fg': s:purple })
" }}}

" Vimwiki {{{
call Highlight('VimwikiDelText', { 'fg': s:grey, 'bg': s:none, 'style': s:none })
call Highlight('VimwikiHeaderChar', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader1', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader2', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader3', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader4', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader5', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader6', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiPre', { 'fg': s:light_green, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiCode', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('VimwikiCodeChar', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('VimwikiBoldChar', { 'fg': s:grey })
call Highlight('VimwikiItalicChar', { 'fg': s:grey })
" }}}

" GitGutter {{{
call Highlight('GitGutterAdd', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterChange', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterDelete', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterChangeDelete', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
" }}}

" Dirvish {{{
call Highlight('DirvishPathTail', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
" }}}

" Python {{{
call Highlight('pythonBuiltin', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('pythonBuiltinFunc', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('pythonFunction', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('pythonClass', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
call Highlight('pythonFunctionCall', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('pythonClassVar', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('pythonExClass', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
hi link pythonTripleQuotes Comment
hi link pythonDoctest Comment
hi link pythonDoctest2 Comment
" }}}

" netrw {{{
call Highlight('netrwExe', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('netrwDir', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
call Highlight('netrwClassify', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
" }}}

" Nvim LSP {{{
call Highlight('DiagnosticError', { 'fg': { 'cterm': 197, 'gui': '#fd2c40' }})
hi link LspDiagnosticsDefaultError DiagnosticError
call Highlight('DiagnosticWarn', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
hi link LspDiagnosticsDefaultWarning DiagnosticWarn
call Highlight('DiagnosticInfo', { 'fg': s:light_grey, 'bg': s:none, 'style': s:none })
hi link LspDiagnosticsDefaultInfo DiagnosticInfo
call Highlight('DiagnosticHint', { 'fg': s:light_grey, 'bg': s:none, 'style': s:none })
hi link LspDiagnosticsDefaultHint DiagnosticHint
call Highlight('DiagnosticUnderlineError', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
hi link LspDiagnosticsUnderlineError DiagnosticUnderlineError
call Highlight('DiagnosticUnderlineWarn', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
hi link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn
call Highlight('DiagnosticUnderlineInfo', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
hi link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
call Highlight('DiagnosticUnderlineHint', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
hi link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
" }}}

if (has('nvim-0.8'))
  " Neovim specific Treesitter highlights

  " Python {{{
  call Highlight('@constructor.python', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
  call Highlight('@field.python', { 'fg': s:white, 'bg': s:none, 'style': s:none })
  call Highlight('@function.builtin.python', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
  call Highlight('@keyword.function.python', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
  call Highlight('@parameter.python', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
  call Highlight('@preproc.python', { 'fg': s:grey, 'bg': s:none, 'style': s:italic })
  call Highlight('@punctuation.delimiter.python', { 'fg': s:light_grey, 'bg': s:none, 'style': s:none })
  call Highlight('@string.documentation.python', { 'fg': s:grey, 'bg': s:none, 'style': s:italic })
  call Highlight('@type.python', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
  call Highlight('@type.builtin.python', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
  call Highlight('@variable.builtin.python', { 'fg': s:light_grey, 'bg': s:none, 'style': s:italic })
  call Highlight('@variable.python', { 'fg': s:white, 'bg': s:none, 'style': s:none })
  " }}}

  " Scala {{{
  call Highlight('@parameter.scala', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
  call Highlight('@type.scala', { 'fg': s:light_blue, 'bg': s:none, 'style': s:none })
  call Highlight('@variable.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@type.qualifier.scala', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
  call Highlight('@method.scala', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
  call Highlight('@function.scala', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
  call Highlight('@method.call.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@function.call.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@property.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@punctuation.bracket.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@namespace.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@conditional.scala', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
  call Highlight('@variable.builtin.scala', { 'fg': s:light_blue, 'bg': s:none, 'style': s:italic })
  " LSP semantic highlights
  call Highlight('@lsp.type.parameter.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.namespace.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.method.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.variable.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.class.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  " }}}

  " TypeScript {{{
  call Highlight('@lsp.type.parameter.typescript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.variable.typescript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.property.typescript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.namespace.typescript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  " }}}

  " TypeScript React (TSX) {{{
  call Highlight('@lsp.type.parameter.typescript.tsx', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.variable.typescript.tsx', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.property.typescript.tsx', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.namespace.typescript.tsx', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  " }}}

  " JavaScript {{{
  call Highlight('@lsp.type.parameter.javascript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.variable.javascript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.property.javascript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  call Highlight('@lsp.type.namespace.javascript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
  " }}}
endif

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
