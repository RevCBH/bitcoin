" Support for building the bitcoin project

function! s:RunMakefile()
  :wa
  cd src
  let oldmake = &makeprg
  let &makeprg = "make -f makefile.osx"
  make
  let &makeprg = oldmake
  cd ..
endfunction

nnoremap <F5> :call <SID>RunMakefile()<CR><CR>:botright :copen<CR>
