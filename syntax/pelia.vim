" Quit when a syntax file was already loaded.
if exists('b:current_syntax') | finish|  endif

" Keywords
syn keyword celPragmaSt tempo sample inst wave

syn keyword celFunction min maj min7 maj7 min9 maj9 up down
syn keyword celRepeat seq rand repeat concat
syn match celOperator '+'
syn match celOperator '-'
syn match celOperator ':'
syn match celOperator '>'
syn match celOperator '<'
syn match celOperator '='

syn match celOperator 'bits'
syn match celOperator "eucl'"
syn match celOperator 'eucl'

syn match celSignal '->'

syn match celPragma '%'
syn match celPragma '%%'

syn match celIdent '\<_dur\>'
syn match celIdent '\<_\>'
syn match celIdent '\<true\>'
syn match celIdent '\<false\>'

syn match celString "'.*'"
syn match celString '".*"'

syn match celNumber '\<\d\+\>'
syn match celNumber '\<\d\+\.\d\+\>'
syn match celNumber '\<[ABCDEFG][bs]\?\d\>'

syn match celForbiddedTab '\t'

syn keyword celTodo contained TODO FIXME XXX NOTE
syn match celComment "#.*$" contains=celTodo

" instruments options
syn keyword celFilter adsr delay dist distortion vibrato am timeshift harmonizer harm flanger exp movexp ratio
syn keyword celFilterOption attackLevel decayLevel attackLen decayLen sustainLen releaseLen
syn keyword celFilterOption int interval times fade
syn keyword celFilterOption value abs maxShift
syn keyword celFilterOption freq frequency shift amp amplitude
syn keyword celFilterOption swingexp pan swingpan carrier left right


hi def link celPragmaSt Conditional

hi def link celNumber Number
hi def link celString String
hi def link celFunction Function
hi def link celRepeat Function
hi def link celOperator Operator
hi def link celIdent Identifier
hi def link celTodo Todo
hi def link celComment Comment
hi def link celPragma Type
hi def link celSignal Special
hi def link celForbiddedTab Error

hi def link celFilter StorageClass
hi def link celFilterOption Structure

" let b:current_syntax = 'pelia'
