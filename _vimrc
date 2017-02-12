" colorscheme badwolf
colorscheme darkblue
filetype off
set nocp
"
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
"
"
let g:tex_flavor='latex'
set ts=4
set autoindent
set expandtab
set nobackup
set noswapfile
set nowrap
"'let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '^'
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * silent! lcd %:p:h
" map <C-n> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree

let mapleader = ","

set runtimepath^=~/vimfiles/bundle/ctrlp.vim
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set showcmd
" set cursorline
set wildmenu
set history=10000
nmap <F11> :!start explorer /e,,%:p:h<CR>
"nmap <F11> :!start explorer /select,%:p
"nmap <F11> :silent !start explorer /e,,%:p:h,/select,%:p<CR>
imap <F11> <Esc><F11>
"set fenc=utf-8
set langmenu=cp949
"language messages ko_kr.utf8
language messages en

cd ~/projects/docs
let g:tracServerList= {}
let g:tracServerList['localhost'] = 'http://admin:bpl0404@localhost/trac/Project/login/xmlrpc'
let g:tracBrowser= 'firefox'

" °³ÀÎÀûÀÎ ¼±È£
set cmdheight=2
" set clipboard=unnamed " unnamed register "¸¦ clipboard register·Î »ç¿ëÇÏ¿©, clipboardÀÇ ³»¿ëÀ» p, P¸¦ ÅëÇØ¼­ ÀÔ·ÂÇÒ ¼ö ÀÖ°ÔÇÔ. ¿ø·¡ clipboard register´Â "*, "+ primary selection
" »çÀü¿¡ ·¹Áö½ºÅÍ¿¡ Æ¯Á¤ÇÑ ³»¿ëÀ» Ãß°¡ÇÒ ¼ö ÀÖÀ½
let @a = "123 Main Street"
let @b = "800-555-1212"
"
" set nu or relative number
" set relative number
" set number


"ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-i>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:pymode_folding=0

set nofoldenable
let g:username="Heungshik Kim"
let g:user="heungshik"
let g:email="heungshik@gmail.com"

let proj1 = { 'path': '~/projects/docs/rst',}
let g:riv_projects = [proj1]
"

" Vimtrac

"
"
" execute accidentally-inserted command
" <Esc>u:@.
" edit macro: "mp, edit macro text: "myy, Capture output to a register :redir
" @A

" ipython
" cmd: ipython qtconsole
" :source ~/vimfiles/ftplugin/python/ipy.vim //automatically sourced..
" :IPython
" Ctrl-S
" :g/^/execute '.w '.line('.').'.txt'
"
"  set enc=utf-8
"  set fenc=utf-8
"  set fencs=ucs-bom,utf-8,cp949,latin1
"  set nobomb
"  lang en
"  :source $VIMRUNTIME/delmenu.vim
"  :set langmenu=ko.UTF-8
"  :source $VIMRUNTIME/menu.vim


"set enc=utf-8"ì´ ì—†ìœ¼ë©´ ì¸ì½”ë”©ì„ cp949ë¡œ ì¸ì‹í•˜ëŠ”ë°, ì´ ê²½ìš° ucs-2le ë“±ìœ¼ë¡œ ëœ íŒŒì¼ì„ ì½ì„ ìˆ˜ ì—†ë‹¤.  ì¸ì½”ë”©ì„ ë°”ê¾¸ë ¤ê³  ì‹œë„í•´ë„ ë°”ê¿€ ìˆ˜ ì—†ë‹¤ë©´ì„œ ë°”ë€Œì§€ ì•ŠëŠ”ë‹¤."set enc=utf-8"ÀÌ ¾øÀ¸¸é ÀÎÄÚµùÀ» cp949·Î ÀÎ½ÄÇÏ´Âµ¥, ÀÌ °æ¿ì ucs-2le µîÀ¸·Î µÈ ÆÄÀÏÀ» ÀÐÀ» ¼ö ¾ø´Ù.  ÀÎÄÚµùÀ» ¹Ù²Ù·Á°í ½ÃµµÇØµµ ¹Ù²Ü ¼ö ¾ø´Ù¸é¼­ ¹Ù²îÁö ¾Ê´Â´Ù.
"set enc=utf-8"ì„ ì ì–´ì•¼ ì •ìƒì ìœ¼ë¡œ ì½ì„ ìˆ˜ ìžˆë‹¤."set
"enc=utf-8"À» Àû¾î¾ß Á¤»óÀûÀ¸·Î ÀÐÀ» ¼ö ÀÖ´Ù.
"set enc=utf-8"ì„ vimrc íŒŒì¼ì˜ ì¤‘ê°„ì¯¤ì— ë„£ì–´ë‘ë©´ gVimì˜ í•œê¸€ ë©”ë‰´ê°€ ê¹¨ì ¸ ë‚˜ì˜¨ë‹¤.  ê·¸ëŸ¬ë‚˜ ì´ê²ƒì„ vimrcì˜ ë§¨ì•žì— ì ìœ¼ë©´ ë©”ë‰´ê°€ ê¹¨ì§€ì§€ ì•ŠëŠ”ë‹¤.  ê°ì¢… í•œê¸€ ë©”ì‹œì§€ë“¤ì€ UTF-8 ë²„ì „ì´ ì—†ì–´ì„œ ê¹¨ì ¸ ë‚˜ì˜¨ë‹¤.
"lang en"ì„ ë„£ìœ¼ë©´ ë©”ë‰´ì™€ ë©”ì‹œì§€ë¥¼ ì˜ì–´ë¡œ ë°”ê¾¼ë‹¤.  ë©”ì‹œì§€ë§Œ ë°”ê¿€ ê²½ìš°ì—ëŠ” vimrcì˜ ì¤‘ê°„ì— ì ì–´ë„ ë˜ì§€ë§Œ, ë©”ë‰´ê¹Œì§€ ë°”ê¾¸ê³  ì‹¶ìœ¼ë©´ vimrcì˜ ë§¨ì•žì— ì ì–´ì•¼ í•œë‹¤.
"    :source $VIMRUNTIME/delmenu.vim
"    :set langmenu=ko.UTF-8
"    :source $VIMRUNTIME/menu.vim
"
"ì´ê²ƒì€ ë©”ë‰´ë¥¼ ìž¬ì„¤ì •í•˜ëŠ” ë°©ë²•ì´ë‹¤. ì•žì„œ ë§í•œ "set enc=utf-8" ë˜ëŠ” "lang en"ì„ vimrcì˜ ì¤‘ê°„ì— ì ì—ˆë”ë¼ë„, ì´ ë°©ë²•ì„ ì‚¬ìš©í•˜ë©´ ë©”ë‰´ê°€ ì •ìƒì ìœ¼ë¡œ ë‚˜ì˜¤ê²Œ í•  ìˆ˜ ìžˆë‹¤. ë¬¼ë¡  langmenuë¥¼ enìœ¼ë¡œ í•˜ë©´ ì˜ì–´ ë©”ë‰´ê°€ ë‚˜ì˜¤ê³ , ko.UTF-8ë¡œ í•˜ë©´ í•œê¸€ ë©”ë‰´ê°€ ë‚˜ì˜¨ë‹¤.

"ì¶”ê°€
"Vim 7.3ì—ì„œ ë­”ê°€ ë°”ë€Œì—ˆë‹¤.

"    set enc=utf-8
"    set fenc=utf-8
"    set fencs=ucs-bom,utf-8,cp949,latin1
"    set nobomb
" vim 7.2, windows
"lang en
"source $VIMRUNTIME/delmenu.vim
"set langmenu=ko.UTF-8
"source $VIMRUNTIME/menu.vim
" vim 7.3, windows
"    let $LANG = 'ko_KR.UTF-8'
"    source $VIMRUNTIME/delmenu.vim
"    source $VIMRUNTIME/menu.vim
"
"ì´ëŸ¬ë©´ ì œëŒ€ë¡œ ëœë‹¤.
" 
" echom ">^.^<"
" a
"
"
augroup filetypedetect_rst
    au!
    " Headings
    au FileType rst nnoremap <leader>h1 ^yypv$r=o<cr><esc>
    au FileType rst inoremap <leader>h1 <esc>^yypv$r=o<cr>

    au FileType rst nnoremap <leader>h2 ^yypv$r-o<cr><cr><cr><cr><cr><cr><esc>kkkk
    au FileType rst inoremap <leader>h2 <esc>^yypv$r-o<cr><cr><cr><cr><cr><cr><esc>kkkki

    au FileType rst nnoremap <leader>h3 ^yypv$r+o<cr><cr><cr><cr><cr><cr><esc>kkkk
    au FileType rst inoremap <leader>h3 <esc>^yypv$r+o<cr><cr><cr><cr><cr><cr><esc>kkkki

    au FileType rst nnoremap <leader>h4 ^yypv$r~o<cr><cr><cr><cr><cr><cr><esc>kkkk
    au FileType rst inoremap <leader>h4 <esc>^yypv$r~o<cr><cr><cr><cr><cr><cr><esc>kkkki

    au FileType rst nnoremap <leader>h5 ^yypv$r*o<cr><cr><cr><cr><cr><cr><esc>kkkk
    au FileType rst inoremap <leader>h5 <esc>^yypv$r*o<cr><cr><cr><cr><cr><cr><esc>kkkki
    """Make Link (ml)
    " Highlight a word or phrase and it creates a link and opens a split so
    " you can edit the url separately. Once you are done editing the link,
    " simply close that split.
    au FileType rst vnoremap <leader>ml yi`<esc>gvvlli`_<esc>:vsplit<cr><C-W>l:$<cr>o<cr>.. _<esc>pA: http://TODO<esc>vb
    """Make footnote (ml)
    au FileType rst iabbrev mfn [#]_<esc>:vsplit<cr><C-W>l:$<cr>o<cr>.. [#] TODO
    au FileType rst set spell
    "Create image
    au FileType rst iabbrev iii .. image:: TODO.png<cr>    :scale: 100<cr>:align: center<cr><esc>kkkeel
    "Create figure
    "au FileType rst iabbrev iif .. figure:: TODO.png<cr>    :scale: 100<cr>:align: center<cr>:alt: TODO<cr><cr><cr>Some brief description<esc>kkkeel

    "Create note
    au FileType rst iabbrev nnn .. note:: 
    "Start or end bold text inline
    au FileType rst inoremap <leader>bb **
    "Start or end italicized text inline
    au FileType rst inoremap <leader>ii *
    "Start or end preformatted text inline
    au FileType rst inoremap <leader>pf ``

    " Fold settings
    "au FileType rst set foldmethod=marker
    
    " Admonitions
    au FileType rst iabbrev adw .. warning::
    au FileType rst iabbrev adn .. note::
augroup END
