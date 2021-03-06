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

" 개인적인 선호
set cmdheight=2
" set clipboard=unnamed " unnamed register "를 clipboard register로 사용하여, clipboard의 내용을 p, P를 통해서 입력할 수 있게함. 원래 clipboard register는 "*, "+ primary selection
" 사전에 레지스터에 특정한 내용을 추가할 수 있음
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


"set enc=utf-8"�씠 �뾾�쑝硫� �씤肄붾뵫�쓣 cp949濡� �씤�떇�븯�뒗�뜲, �씠 寃쎌슦 ucs-2le �벑�쑝濡� �맂 �뙆�씪�쓣 �씫�쓣 �닔 �뾾�떎.  �씤肄붾뵫�쓣 諛붽씀�젮怨� �떆�룄�빐�룄 諛붽�� �닔 �뾾�떎硫댁꽌 諛붾�뚯�� �븡�뒗�떎."set enc=utf-8"이 없으면 인코딩을 cp949로 인식하는데, 이 경우 ucs-2le 등으로 된 파일을 읽을 수 없다.  인코딩을 바꾸려고 시도해도 바꿀 수 없다면서 바뀌지 않는다.
"set enc=utf-8"�쓣 �쟻�뼱�빞 �젙�긽�쟻�쑝濡� �씫�쓣 �닔 �엳�떎."set
"enc=utf-8"을 적어야 정상적으로 읽을 수 있다.
"set enc=utf-8"�쓣 vimrc �뙆�씪�쓽 以묎컙易ㅼ뿉 �꽔�뼱�몢硫� gVim�쓽 �븳湲� 硫붾돱媛� 源⑥졇 �굹�삩�떎.  洹몃윭�굹 �씠寃껋쓣 vimrc�쓽 留⑥븵�뿉 �쟻�쑝硫� 硫붾돱媛� 源⑥��吏� �븡�뒗�떎.  媛곸쥌 �븳湲� 硫붿떆吏��뱾��� UTF-8 踰꾩쟾�씠 �뾾�뼱�꽌 源⑥졇 �굹�삩�떎.
"lang en"�쓣 �꽔�쑝硫� 硫붾돱��� 硫붿떆吏�瑜� �쁺�뼱濡� 諛붽씔�떎.  硫붿떆吏�留� 諛붽�� 寃쎌슦�뿉�뒗 vimrc�쓽 以묎컙�뿉 �쟻�뼱�룄 �릺吏�留�, 硫붾돱源뚯�� 諛붽씀怨� �떢�쑝硫� vimrc�쓽 留⑥븵�뿉 �쟻�뼱�빞 �븳�떎.
"    :source $VIMRUNTIME/delmenu.vim
"    :set langmenu=ko.UTF-8
"    :source $VIMRUNTIME/menu.vim
"
"�씠寃껋�� 硫붾돱瑜� �옱�꽕�젙�븯�뒗 諛⑸쾿�씠�떎. �븵�꽌 留먰븳 "set enc=utf-8" �삉�뒗 "lang en"�쓣 vimrc�쓽 以묎컙�뿉 �쟻�뿀�뜑�씪�룄, �씠 諛⑸쾿�쓣 �궗�슜�븯硫� 硫붾돱媛� �젙�긽�쟻�쑝濡� �굹�삤寃� �븷 �닔 �엳�떎. 臾쇰줎 langmenu瑜� en�쑝濡� �븯硫� �쁺�뼱 硫붾돱媛� �굹�삤怨�, ko.UTF-8濡� �븯硫� �븳湲� 硫붾돱媛� �굹�삩�떎.

"異붽��
"Vim 7.3�뿉�꽌 萸붽�� 諛붾�뚯뿀�떎.

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
"�씠�윭硫� �젣���濡� �맂�떎.
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
