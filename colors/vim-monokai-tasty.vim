" Vim color file
"
" Author: Patrick Stockwell <longnow@tutanota.com>
"
" hi clear "Reset all highlighting to the defaults.  Removes all highlighting for groups added by the user

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vim-monokai-tasty"

" prefix with s: for local script-only functions or variables

let s:fg = " ctermfg=" " foreground
let s:bg = " ctermbg=" " background
let s:style = " cterm="

let s:yellow = 228
let s:purple = 141
let s:light_green = 148
let s:light_blue = 81
let s:magenta = 197
let s:orange = 208

let s:white = 231
let s:light_grey = 250
let s:grey = 245
let s:dark_grey = 59
let s:darker_grey = 238
let s:charcoal = 235
let s:pale_yellow = 186
let s:danger = 197
let s:olive = 64
let s:dark_red = 88
let s:blood_red = 52
let s:dark_green = 22
let s:light_sea_blue = 33
let s:sea_blue = 25

let s:none = " ctermfg=NONE ctermbg=NONE cterm=NONE"

exec "hi Cursor"            . s:fg . s:charcoal     . s:bg . s:light_blue . s:style . "NONE"

exec "hi Normal"            . s:fg . s:white        . s:bg . s:charcoal . s:style . "NONE"
exec "hi Special"           . s:fg . s:purple . s:style . "NONE"
exec "hi Title"             . s:fg . s:white                                    . s:style . "bold"

exec "hi DiffChange"        . s:fg . s:white        . s:bg . s:sea_blue . s:style . "NONE"
exec "hi DiffText"          . s:fg . s:white        . s:bg . s:light_sea_blue . s:style . "NONE"
exec "hi DiffDelete"        . s:fg . s:dark_red     . s:bg . s:blood_red . s:style . "NONE"
exec "hi DiffAdd"           . s:fg . s:white        . s:bg . s:dark_green . s:style . "NONE"

exec "hi Error"             . s:fg . s:white        . s:bg . s:danger . s:style . "NONE"
exec "hi ErrorMsg"          . s:fg . s:white        . s:bg . s:danger . s:style . "NONE"
exec "hi WarningMsg"        . s:fg . s:white        . s:bg . s:danger . s:style . "NONE"
exec "hi SpellBad"        . s:fg . s:white        . s:bg . s:danger . s:style . "NONE"
exec "hi SpellRare"        . s:fg . s:white        . s:bg . s:danger . s:style . "NONE"

exec "hi CursorLineNR"      . s:fg . s:pale_yellow . s:style . "NONE"

exec "hi CursorColumn"      . s:none
exec "hi ColorColumn"       . s:none
exec "hi Conceal"           . s:none
exec "hi CursorLine"        . s:none
exec "hi ColorColumn"       . s:none
exec "hi Type"              . s:none

exec "hi Visual "                                   . s:bg . s:dark_grey . s:style . "NONE"
exec "hi TabLine"           . s:fg . s:light_grey   . s:bg . s:dark_grey        . s:style . "underline"

exec "hi TabLineSel"                                . s:bg . s:charcoal         . s:style . "bold"

exec "hi SignColumn"        . s:fg . s:grey         . s:bg . s:darker_grey . s:style . "NONE"
exec "hi NonText"           . s:fg . s:darker_grey . s:style . "NONE"
exec "hi TabLineFill"                               . s:bg . s:darker_grey      . s:style . "NONE"
exec "hi LineNr"            . s:fg . s:darker_grey . s:style . "NONE"
exec "hi VertSplit"         . s:fg . s:darker_grey  . s:bg . s:charcoal         . s:style . "NONE"
exec "hi StatusLine"        . s:fg . s:white        . s:bg . s:darker_grey      . s:style . "NONE"
exec "hi StatusLineNC"      . s:fg . s:white        . s:bg . s:darker_grey      . s:style . "NONE"

exec "hi Exception"         . s:fg . s:magenta                                  . s:style . "bold"
exec "hi MatchParen"        . s:fg . s:magenta      . s:bg . "NONE"             . s:style . "underline"
exec "hi Include"           . s:fg . s:magenta . s:style . "NONE"
exec "hi Conditional"       . s:fg . s:magenta . s:style . "NONE"
exec "hi Define"            . s:fg . s:magenta . s:style . "NONE"
exec "hi Debug"             . s:fg . s:magenta . s:style . "NONE"
exec "hi Delimiter"         . s:fg . s:magenta . s:style . "NONE"
exec "hi Keyword"           . s:fg . s:magenta . s:style . "NONE"
exec "hi Macro"             . s:fg . s:magenta . s:style . "NONE"
exec "hi Operator"          . s:fg . s:magenta . s:style . "NONE"
exec "hi PreProc"           . s:fg . s:magenta . s:style . "NONE"
exec "hi Statement"         . s:fg . s:magenta . s:style . "NONE"
exec "hi Repeat"            . s:fg . s:magenta . s:style . "NONE"

exec "hi SpecialKey"        . s:fg . s:dark_grey    . s:bg . s:darker_grey      . s:style . "NONE"
exec "hi IncSearch"         . s:fg . s:white        . s:bg . s:purple           . s:style . "bold,underline"
exec "hi Search"            . s:fg . s:white        . s:bg . s:purple           . s:style . "bold,underline"

exec "hi Identifier"        . s:fg . s:light_blue                               . s:style . "NONE"
exec "hi Question"          . s:fg . s:light_blue . s:style . "NONE"
exec "hi StorageClass"      . s:fg . s:light_blue                               . s:style . "italic"
exec "hi Structure"         . s:fg . s:light_blue . s:style . "NONE"

exec "hi Function"          . s:fg . s:light_green . s:style . "NONE"

exec "hi Constant"          . s:fg . s:purple . s:style . "NONE"
exec "hi Directory"         . s:fg . s:purple . s:style . "NONE"
exec "hi Tag"               . s:fg . s:purple . s:style . "NONE"

exec "hi Folded"            . s:fg . s:grey         . s:bg . s:charcoal
exec "hi Comment"           . s:fg . s:grey                                     . s:style . "italic"

exec "hi Boolean"           . s:fg . s:purple . s:style . "NONE"
exec "hi Character"         . s:fg . s:purple . s:style . "NONE"
exec "hi Float"             . s:fg . s:purple . s:style . "NONE"
exec "hi Number"            . s:fg . s:purple . s:style . "NONE"

exec "hi Label"             . s:fg . s:yellow . s:style . "NONE"
exec "hi String"            . s:fg . s:yellow . s:style . "NONE"

exec "hi Todo"              . s:fg . s:yellow        . s:bg . s:dark_grey            . s:style . "bold"
exec "hi Underlined"                                                                . s:style . "underline"

exec "hi Pmenu"             . s:fg . s:light_blue   . s:bg . s:darker_grey . s:style . "NONE"
exec "hi PmenuSel"          . s:fg . s:yellow       . s:bg . s:dark_grey . s:style . "NONE"
exec "hi PmenuSbar"                                 . s:bg . s:grey . s:style . "NONE"
exec "hi PmenuThumb"                                . s:bg . s:white . s:style . "NONE"

" Javascript syntax overwrites from vim-javascript plugin
syntax region  jsObject             contained matchgroup=jsObjectBraces        start=/{/  end=/}/  contains=jsObjectKey,jsObjectKeyString,jsObjectKeyComputed,jsObjectShorthandProp,jsObjectSeparator,jsObjectFuncName,jsObjectMethodType,jsGenerator,jsComment,jsObjectStringKey,jsSpreadExpression,jsTemplateString,jsDecorator,jsAsyncKeyword extend fold

" Javascript colour highlighting rules
exec "hi Noise"             . s:fg . s:magenta . s:style . "NONE"
hi def link jsComment              Comment
hi def link jsEnvComment           Comment
exec "hi jsParensIfElse"            . s:fg . s:white . s:style . "NONE"
exec "hi jsParensRepeat"            . s:fg . s:white . s:style . "NONE"
exec "hi jsParensSwitch"            . s:fg . s:white . s:style . "NONE"
exec "hi jsParensCatch"             . s:fg . s:white . s:style . "NONE"
hi def link jsCommentTodo          Todo
hi def link jsString               String
hi def link jsObjectKeyString      String
hi def link jsTemplateString       String
hi def link jsObjectStringKey      String
hi def link jsClassStringKey       String
exec "hi jsArrowFunction"         . s:fg . s:light_blue . s:style . "NONE"
exec "hi jsArrowFuncArgs"         . s:fg . s:orange . s:style . "italic"
hi def link jsStorageClass         StorageClass
hi def link jsNumber               Number

exec "hi jsBrackets"            . s:fg . s:light_green . s:style . "NONE"
exec "hi jsBraces"            . s:fg . s:white . s:style . "NONE"
exec "hi jsFuncBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsClassBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsIfElseBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsTryCatchBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsModuleBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsObjectBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsFinallyBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsRepeatBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsSwitchBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsTemplateBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsDestructuringBraces" . s:fg . s:white . s:style . "NONE"
exec "hi jsFuncName" . s:fg . s:light_green . s:style . "NONE"
exec "hi jsFuncCall" . s:fg . s:light_blue . s:style . "NONE"
exec "hi jsClassFuncName" . s:fg . s:light_green . s:style . "NONE"
exec "hi jsArguments" . s:fg . s:orange . s:style . "italic"
exec "hi jsFuncArgs" . s:fg . s:orange . s:style . "italic"
exec "hi jsClassKeyword" . s:fg . s:light_blue . s:style . "italic"
exec "hi jsThis" . s:fg . s:orange . s:style . "italic"
exec "hi jsUndefined" . s:fg . s:purple . s:style . "NONE"
exec "hi jsParens" . s:fg . s:white . s:style . "NONE"
exec "hi jsFuncParens" . s:fg . s:white . s:style . "NONE"
exec "hi jsGlobalObjects" . s:fg . s:light_blue . s:style . "NONE"
exec "hi jsFunction" . s:fg . s:light_blue . s:style . "italic"

hi def link jsImport               Include
hi def link jsExport               Include
hi def link jsModuleComma          Operator

hi def link jsTaggedTemplate       StorageClass
hi def link jsTernaryIfOperator    Operator
hi def link jsRegexpString         String
hi def link jsRegexpBoundary       SpecialChar
hi def link jsRegexpQuantifier     SpecialChar
hi def link jsRegexpOr             Conditional
hi def link jsRegexpMod            SpecialChar
hi def link jsRegexpBackRef        SpecialChar
hi def link jsRegexpGroup          String

hi def link jsRegexpCharClass      Character
hi def link jsCharacter            Character
hi def link jsPrototype            Special
hi def link jsConditional          Conditional
hi def link jsBranch               Conditional
hi def link jsLabel                Label
hi def link jsReturn               Statement
hi def link jsRepeat               Repeat
hi def link jsDo                   Repeat
hi def link jsStatement            Statement
hi def link jsException            Exception
hi def link jsTry                  Exception
hi def link jsFinally              Exception
hi def link jsCatch                Exception
hi def link jsAsyncKeyword         Keyword
hi def link jsForAwait             Keyword
hi def link jsObjectFuncName       Function
hi def link jsError                Error
hi def link jsParensError          Error
hi def link jsOperatorKeyword      jsOperator
hi def link jsOperator             Operator
hi def link jsOf                   Operator
hi def link jsExtendsKeyword       Keyword
hi def link jsSuper                Constant
hi def link jsNan                  Number
hi def link jsNull                 Type
hi def link jsFloat                Float
hi def link jsBooleanTrue          Boolean
hi def link jsBooleanFalse         Boolean
hi def link jsObjectColon          jsNoise
hi def link jsNoise                Noise
hi def link jsDot                  Noise
hi def link jsClassNoise           Noise
hi def link jsGenerator            jsFunction

hi def link jsObjectSeparator      Noise
hi def link jsSpecial              Special
hi def link jsGlobalNodeObjects    Constant
hi def link jsExceptions           Constant
hi def link jsBuiltins             Constant
hi def link jsExportDefault        StorageClass
hi def link jsExportDefaultGroup   jsExportDefault
hi def link jsModuleAs             Include
hi def link jsModuleAsterisk       Noise
hi def link jsFrom                 Include
hi def link jsDecorator            Special
hi def link jsDecoratorFunction    Function
hi def link jsParensDecorator      jsParens
hi def link jsFuncArgOperator      jsFuncArgs
hi def link jsClassProperty        jsObjectKey
hi def link jsObjectShorthandProp  jsObjectKey
hi def link jsSpreadOperator       Operator
hi def link jsRestOperator         Operator
hi def link jsRestExpression       jsFuncArgs
hi def link jsSwitchColon          Noise
hi def link jsClassMethodType      Type
hi def link jsObjectMethodType     Type
hi def link jsClassDefinition      jsFuncName
hi def link jsBlockLabel           Identifier
hi def link jsBlockLabelKey        jsBlockLabel
hi def link jsDestructuringProperty   jsFuncArgs
hi def link jsDestructuringAssignment jsObjectKey
hi def link jsDestructuringNoise      Noise
hi def link jsCommentFunction      jsComment
hi def link jsCommentClass         jsComment
hi def link jsCommentIfElse        jsComment
hi def link jsCommentRepeat        jsComment
hi def link jsDomErrNo             Constant
hi def link jsDomNodeConsts        Constant
hi def link jsDomElemAttrs         Label
hi def link jsDomElemFuncs         PreProc
hi def link jsHtmlEvents           Special
hi def link jsHtmlElemAttrs        Label
hi def link jsHtmlElemFuncs        PreProc
hi def link jsCssStyles            Label


" XML highlighting.
hi def link xmlTodo   Todo
exec "hi xmlTag" . s:fg . s:light_blue
exec "hi xmlTagName" . s:fg . s:light_blue
exec "hi xmlEndTag" . s:fg . s:light_blue
exec "hi xmlEqual" . s:fg . s:magenta

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark

