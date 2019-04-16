function! myspacevim#before() abort
    " some vimfiler customization
    let g:vimfiler_tree_closed_icon = "▷"
    let g:vimfiler_tree_opened_icon = "▼"
    let g:vimfiler_tree_indentation = 2
    let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$']

    " StanAngeloff/php.vim plugin performance improvements
    let g:php_var_selector_is_identifier = 1
    let g:php_html_load = 0
    let g:php_html_in_heredoc = 0
    let g:php_html_in_nowdoc = 0
    let g:php_sql_query = 0
    let g:php_sql_heredoc = 0
    let g:php_sql_nowdoc = 0
endfunction
