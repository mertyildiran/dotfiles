function! myspacevim#before() abort
    let g:vimfiler_tree_closed_icon = ">"
    let g:vimfiler_tree_opened_icon = "v"
    let g:vimfiler_tree_indentation = 2
    let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$']
endfunction
