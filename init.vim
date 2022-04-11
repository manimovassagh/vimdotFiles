call plug#begin()

"  Plug 'glepnir/dashboard-nvim'
"  " Default value is clap
"  let g:dashboard_default_executive ='telescope.nvim'




  Plug 'preservim/nerdtree'
  autocmd VimEnter * NERDTree




Plug 'morhetz/gruvbox'
autocmd vimenter * ++nested colorscheme gruvbox

"  Plug 'tpope/vim-commentary'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gf <Plug>(coc-fix-current)

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>




nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


Plug 'mattn/emmet-vim'

Plug 'github/copilot.vim'
"  Start Neovim and invoke :Copilot setup
  
"  Plug 'vim-airline/vim-airline'
"  Plug 'vim-airline/vim-airline-themes'

" Vim Script
Plug 'folke/which-key.nvim'

lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

call plug#end()
