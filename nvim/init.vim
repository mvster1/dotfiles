source $HOME/.config/nvim/vim-plug/plugins.vim
set number
syntax on
colorscheme gruvbox
set background=dark
set cursorline

let g:airline_theme='tomorrow'

" use <tab> to trigger completion and navigate to the next complete item
" (cOc.nvim)
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
