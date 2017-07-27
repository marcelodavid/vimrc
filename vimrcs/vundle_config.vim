"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible    " be iMproved, required
filetype off        " required

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where vundle should install plugin
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" html tags helper
Plugin 'mattn/emmet-vim'

Plugin 'flazz/vim-colorschemes'

Plugin 'cakebaker/scss-syntax.vim'

Plugin 'leafgarland/typescript-vim'

Bundle 'https://github.com/etdev/vim-hexcolor.git'

Plugin 'Chiel92/vim-autoformat'

Plugin 'kien/rainbow_parentheses.vim'

" All of your Plugins must be added before the following line
call vundle#end()   " required
filetype plugin indent on   " required

colorscheme materialtheme

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufWrite * :Autoformat

let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['red',         'firebrick3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
