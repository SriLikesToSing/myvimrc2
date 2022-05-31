 source $VIMRUNTIME/vimrc_example.vim
  
  
  colorscheme peachpuff
  highlight Comment ctermfg=green
  
  au GUIEnter * simalt ~x
  set hls
  set is
  set cb=unnamed
  set gfn=Fixedsys:h10
  set ts=4
  set sw=4
  set si
  autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r && %:r.exe <CR>
  map <F9> :<C-U>!./%:r<CR>
  
   inoremap { {}<Left>
   inoremap {<CR> {<CR>}<Esc>O
   inoremap {{ {
   inoremap {} {}
   
   autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
   autocmd filetype cpp nnoremap <F10> :!%:r<CR>
   autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
   
  set nu
   augroup numbertoggle
           autocmd!
               autocmd BufEnter,FocusGained,InsertLeave * set rnu
               autocmd BufLeave,FocusLost,InsertEnter * set nornu
           augroup END
           filetype detect
           set nocompatible
           set exrc
           set mouse=a
          set tabstop=4
          set shiftwidth=4
  
          set smarttab
          set autoindent
          set smartindent
          set cindent
  
          set showcmd
          set number
          set autowrite
          set autoread
  
          set nowrap
