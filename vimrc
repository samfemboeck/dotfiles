filetype plugin indent on
syntax on

set nocompatible
set path+=**

call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim'
	Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()

" Use <CR> to confirm completion
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Show documentation in a floating window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
