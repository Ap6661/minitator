let s:bindir = expand('<sfile>:p:h:h') . '/bin/'

function minitator#fourspace()
    set expandtab tabstop=4 shiftwidth=4
endfunction

function minitator#headdy()
  let l:exe = s:bindir . 'headdy'

  let l:cmdout = systemlist(exe . " " . @%)

  for l:line in l:cmdout
    echom "headdy:" l:line
  endfor
  if v:shell_error == 0
    echom "headdy: success"
  else
    echom "headdy: failed with code" v:shell_error
  endif
endfunction

function minitator#conjoin()
  let l:exe = s:bindir . 'conjoin'

  let l:cmdout = systemlist(exe . " " . @%)

  for l:line in l:cmdout
    echom "conjoin:" l:line
  endfor
  if v:shell_error == 0
    echom "conjoin: success"
  else
    echom "conjoin: failed with code" v:shell_error
  endif
endfunction

function minitator#macros()
  call minitator#fourspace()

  let @b = 'o"librecode_annotations" : {"note": "�PSlibrecode annotations",[201~"version": 1,"layr�kbers"::�kb [{"anno5t�kb�kbtations": []}]},��5'
  let @l = 'A,{"annotations": []}��5'
  let @t = 'A,"title": ""��5'
  let @a = 'o{"beginning": ,"end": ,"text": ""}��5'
  let @s = 'A,{"beginning": ,"end": ,"text": ""}��5'
endfunction
