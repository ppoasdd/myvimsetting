execute pathogen#infect()
pathogen#helptags() 

set nocompatible        
filetype off   
set rtp+=~/.vim/bundle/Vundle.vim

 
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'The-NERD-tree'
Plugin 'taglist.vim'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on

syntax on
filetype plugin on
let g:pydiction_location='/home/lee/.vim/complete-dict'
let g:solarized_termcolors=256
set t_Co=256 
set background=light
colorscheme solarized

let python_version_2=0
let python_highlight_all=1

set tabstop=8
set softtabstop=4
set expandtab
set ts=4
set nu
set sw=4
set autoindent
"autoread forcibly read the open file by another program without any warning
"message
set autoread

vertical resize 30
:let mapleader = ","
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

"i changed the keyboard mapping esc and caps lock
"so i used <Char-03B> to represent caps lock which is defined to go normal
"mode. However the vim doesn't understand the caps lock key. so i used <esc>,
"then the vim understand. 
":map <F2> <C-V>GI#<esc>
":map <F3> <C-V>Gx


:map <F3> I#<esc>


:map <F4> :SlimuxREPLSendLine <Enter>
":map <F5> :w<Enter>:!python %<Enter>
:map <F5> :new temp2 <Enter><C-W>J:resize 15<Enter><C-W>w

set pastetoggle=<F3>
:map <F6> :w<Enter>:!ipython %<Enter>


"map enter key to insert new line.
:nmap <CR> o<esc>


"the following command is nerdtree on/off
:map <F7> :NERDTreeToggle <Enter>
":map <F8> :Tlist <Enter>

:map <F8> :silent w! !python > temp2 <Enter> 


"make the separated output window
:map <F10> :new temp <Enter><C-W>J:resize 15<Enter><C-W>w
"when we implement the code with korean there is an encoding problem. this
"problem can be solved if we use ipython instead of python.
:map <F9> :silent w! !python > temp <Enter> 



":map <F12> ^iprint(<esc>$a)<esc>oprint('='*100)<esc>
:map <F12> Vypk^iprint('<esc>$a:\n')<esc>j^iprint(<esc>$a)<esc>oprint('='*70)<esc>
":map <F12> :new help.py <Enter><C-W>L:vertical resize 10<Enter><C-W>h
"These part specifies the location of tags database"
set tags=/home/lee/Desktop/pythonfiles/tags

"set tags=/home/lee/Desktop/ctagtest/tags
