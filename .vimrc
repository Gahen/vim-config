filetype plugin on
syntax on
execute pathogen#infect()
let g:no_html_tab_mapping = 'yes'
set tabstop=4
set shiftwidth=4
set linebreak
command Thtml :%!tidy -q -i --show-errors 0
filetype plugin indent on
set exrc			" enable per-directory .vimrc files
set secure			" disable unsafe commands in local .vimrc files
set hlsearch


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set ruler
" set number
set cmdheight=2
set visualbell

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
set statusline+=\ %{HasPaste()}%F%m%r%h\ %w\  
set laststatus=2
set cursorline
set modelines=1
set showcmd
set wildmenu

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

