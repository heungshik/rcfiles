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

" �������� ��ȣ
set cmdheight=2
" set clipboard=unnamed " unnamed register "�� clipboard register�� ����Ͽ�, clipboard�� ������ p, P�� ���ؼ� �Է��� �� �ְ���. ���� clipboard register�� "*, "+ primary selection
" ������ �������Ϳ� Ư���� ������ �߰��� �� ����
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


"set enc=utf-8"이 없으면 인코딩을 cp949로 인식하는데, 이 경우 ucs-2le 등으로 된 파일을 읽을 수 없다.  인코딩을 바꾸려고 시도해도 바꿀 수 없다면서 바뀌지 않는다."set enc=utf-8"�� ������ ���ڵ��� cp949�� �ν��ϴµ�, �� ��� ucs-2le ������ �� ������ ���� �� ����.  ���ڵ��� �ٲٷ��� �õ��ص� �ٲ� �� ���ٸ鼭 �ٲ��� �ʴ´�.
"set enc=utf-8"을 적어야 정상적으로 읽을 수 있다."set
"enc=utf-8"�� ����� ���������� ���� �� �ִ�.
"set enc=utf-8"을 vimrc 파일의 중간쯤에 넣어두면 gVim의 한글 메뉴가 깨져 나온다.  그러나 이것을 vimrc의 맨앞에 적으면 메뉴가 깨지지 않는다.  각종 한글 메시지들은 UTF-8 버전이 없어서 깨져 나온다.
"lang en"을 넣으면 메뉴와 메시지를 영어로 바꾼다.  메시지만 바꿀 경우에는 vimrc의 중간에 적어도 되지만, 메뉴까지 바꾸고 싶으면 vimrc의 맨앞에 적어야 한다.
"    :source $VIMRUNTIME/delmenu.vim
"    :set langmenu=ko.UTF-8
"    :source $VIMRUNTIME/menu.vim
"
"이것은 메뉴를 재설정하는 방법이다. 앞서 말한 "set enc=utf-8" 또는 "lang en"을 vimrc의 중간에 적었더라도, 이 방법을 사용하면 메뉴가 정상적으로 나오게 할 수 있다. 물론 langmenu를 en으로 하면 영어 메뉴가 나오고, ko.UTF-8로 하면 한글 메뉴가 나온다.

"추가
"Vim 7.3에서 뭔가 바뀌었다.

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
"이러면 제대로 된다.
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
