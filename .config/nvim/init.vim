" sourcing plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
" sourcing proper Tab suggestion config
source $HOME/.config/nvim/coc-completion-options.vim

set tabstop=2
set shiftwidth=2

syntax enable
set number
set noshowmode
set cursorline
set mouse=a

set guicursor=n-v-c:block,i-ci-ve:ver20-blinkon50
" set guicursor=n-v-c:block,i-ci-ve:block

colorscheme default
set background=light

let g:airline_theme='monochrome'
" let g:airline_powerline_fonts = 1
