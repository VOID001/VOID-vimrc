let g:vimwiki_user_root = "/home/void001/Documents/Notes"
let g:vimwiki_list = [{
            \ 'path': '~/Documents/Notes/', 'index': 'index', 'ext': '.mw',
            \ 'auto_tags': 1,
            \ 'nested_syntaxes': {'py': 'python', 'cpp': 'cpp', 'c':'c'}
            \ }]
let g:vimwiki_folding = 'expr'
nmap <Leader>tt <Plug>VimwikiToggleListItem

function! SaveAndUpdate()
    let cwd = getcwd()
    let fname = expand('%:t')
    silent exe 'cd ' . g:vimwiki_user_root
    echohl StatusLineTermNC | echom "Updating your Notes repository ..."
    silent exe '!git add .'
    silent exe '!git commit -s -m "' 'Update file(s): '. fname . '">/dev/null'
    silent exe '!git push >/dev/null 2>/dev/null'
    echohl StatusLineTermNC | echom "Done!"
    echohl None
    silent exe 'cd' cwd
endfunction

" TODO: Maybe we need finer granularity e.g /home/void001/Documents/Notes/*.mw
" But currently I don't know how to pass the g:vimwiki_user_root argument to autocmd
autocmd BufWritePost *.mw call SaveAndUpdate()
