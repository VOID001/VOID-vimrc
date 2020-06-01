let g:vimwiki_list = [{
            \ 'path': '~/Documents/Notes/', 'index': 'index', 'ext': '.mw',
            \ 'auto_tags': 1,
            \ 'nested_syntaxes': {'py': 'python', 'cpp': 'cpp', 'c':'c'}
            \ }]
let g:vimwiki_folding = 'expr'
nmap <Leader>tt <Plug>VimwikiToggleListItem
" autocmd BufWritePost ~/Documents/Notes/*.mw !bash -c "git add . && git ci -S -s -m "

function! SaveAndUpdate()
    let cwd = getcwd()
    let fname = expand('%:t')
    echo cwd
    exe 'cd /home/void001/Documents/Notes'
    echo "Updating your Notes repository ..."
    silent exe '!git add .'
    silent exe '!git commit -s -m "' 'Update file(s): '. fname . '">/dev/null'
    silent exe '!git push >/dev/null 2>/dev/null'
    echo "Done!"
    exe 'cd' cwd
    " exe '!cd ~/Documents/Notes/; git add . && git commit -S -s -m "' 'Update file(s): '.expand('%:t'). '" && git push '
endfunction

autocmd BufWritePost ~/Documents/Notes/*.mw call SaveAndUpdate()
