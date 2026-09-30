colorscheme habamax
set termguicolors
set number
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent><nowait> [g <Plug>(coc-diagnostic-prev)
nmap <silent><nowait> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)


nnoremap <silent> K :call ShowDocumentation()<CR>

:function! ShowDocumentation()
	  if CocAction('hasProvider', 'hover')
		      call CocActionAsync('doHover')
		        else
				    call feedkeys('K', 'in')
				      endif
endfunction

map <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>

highlight Cursor guibg=#626262

set cursorline
highlight clear CursorLine
highlight CursorLine cterm=underline ctermbg=NONE ctermfg=NONE
highlight CocErrorHighlight guifg=#FF0000 ctermfg=red
highlight CocUnusedHighlight guifg=#de791d ctermfg=lightred
