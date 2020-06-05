" Enable deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', {
    \ '_': ['ale'],
    \})
call deoplete#enable_logging('INFO', '/tmp/'.$USER.'_deoplete.log')
