call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'sainnhe/everforest'
	Plug 'morhetz/gruvbox'
	Plug 'tpope/vim-commentary'
	Plug 'sheerun/vim-polyglot'
	Plug 'ycm-core/YouCompleteMe'
	Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" General
set ts=2 sw=2

" Nerd Tree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" fzf
nnoremap <C-f> :Files<CR>

" Everforest
if has('termguicolors')
	set termguicolors
endif
" For dark version.
set background=dark
" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest

" Gruvbox
" autocmd vimenter * ++nested colorscheme gruvbox
" For dark version.
" set background=dark

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
