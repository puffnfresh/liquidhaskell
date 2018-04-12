let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/src/liquidhaskell
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +831 src/Language/Haskell/Liquid/Constraint/Generate.hs
badd +660 term://.//24663:/usr/bin/zsh
badd +1321 src/Language/Haskell/Liquid/Types.hs
badd +1 CabalHelper/Licenses.hs
badd +45 src/Language/Haskell/Liquid/Constraint/Monad.hs
badd +128 src/Test/Target/Util.hs
badd +71 src/Language/Haskell/Liquid/Constraint/Fresh.hs
badd +81 src/Language/Haskell/Liquid/Constraint/Types.hs
badd +556 src/Language/Haskell/Liquid/Transforms/CoreToLogic.hs
badd +0 term://.//6168:/usr/bin/zsh
badd +1 liquid-fixpoint
badd +584 liquid-fixpoint/src/Language/Fixpoint/SortCheck.hs
badd +314 liquid-fixpoint/src/Language/Fixpoint/Types/Refinements.hs
badd +0 tests/pos/Test761.hs
argglobal
silent! argdel *
set stal=2
edit src/Language/Haskell/Liquid/Constraint/Generate.hs
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 106 + 159) / 318)
exe 'vert 2resize ' . ((&columns * 105 + 159) / 318)
exe 'vert 3resize ' . ((&columns * 105 + 159) / 318)
argglobal
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 817 - ((24 * winheight(0) + 40) / 81)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
817
normal! 0
lcd ~/src/liquidhaskell
wincmd w
argglobal
edit term://.//24663:/usr/bin/zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1016 - ((17 * winheight(0) + 40) / 81)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1016
normal! 032|
wincmd w
argglobal
edit term://.//6168:/usr/bin/zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 337 - ((80 * winheight(0) + 40) / 81)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
337
normal! 021|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 106 + 159) / 318)
exe 'vert 2resize ' . ((&columns * 105 + 159) / 318)
exe 'vert 3resize ' . ((&columns * 105 + 159) / 318)
tabedit ~/src/liquidhaskell/tests/pos/Test761.hs
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 36) / 72)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
