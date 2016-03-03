let s:V = vital#of('vital')
let s:HitAHintMotion = s:V.import('HitAHint.Motion')
let s:Input = s:V.import('Over.Input')
let s:Prelude = s:V.import('Prelude')

function! s:f() abort
  return s:HitAHintMotion.move(s:Prelude.escape_pattern(s:Input.getchar()))
endfunctio>

noremap <silent><buffer> <Leader>f :<C-u>call <SID>f()<CR>
