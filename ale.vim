let g:ale_linters = {
            \ 'cpp': ['ccls'],
            \ }
let g:ale_cpp_ccls_init_options = {
            \   'cache': {
            \       'directory': '/tmp/ccls/cache',
            \   },
            \ }
let g:ale_completion_enabled = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

autocmd FileType * :call CheckIfToggleALEShortCut()
function CheckIfToggleALEShortCut() 
    if (&filetype == "cpp")
        nnoremap <C-]>] :ALEGoToDefinition<CR> 
    endif
endfunction
