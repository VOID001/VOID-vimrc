function! FormatOnSave()
  let l:formatdiff = 1
  pyf /usr/share/clang/clang-format.py
endfunction
"autocmd BufWritePre *.h,*.cc,*.cpp call FormatOnSave()

map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
