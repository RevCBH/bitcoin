" Support for building the bitcoin project

function! s:RunMakefile()
  :wa
  cd src
  silent !bitcoind stop
  let oldmake = &makeprg
  let &makeprg = "make -f makefile.osx"
  make
  let &makeprg = oldmake
  cd ..
endfunction

nnoremap <F5> :call <SID>RunMakefile()<CR><CR>:botright :copen<CR>
nnoremap <LocalLeader>da :silent !src/bitcoind -daemon<CR>
nnoremap <LocalLeader>dq :!src/bitcoind stop<CR>
nnoremap <LocalLeader>dt :Tail ~/logs/bitcoin/debug.log<CR>
nnoremap <LocalLeader>ddt :!echo "" > ~/logs/bitcoin/debug.log<CR><CR>

nnoremap <F7> :!test/suite<CR>

