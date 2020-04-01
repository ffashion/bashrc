function s:setVariable()
    set number
	set relativenumber
	set showmode
	set encoding=utf-8
	set t_Co=256
	set autoindent  "按下回车键 自动和上一行对齐
	set tabstop=4   "tab键的大小
	set laststatus=2
	set statusline=
	set hlsearch
	filetype on "开启文件类型检测
	filetype plugin on  "加载某种类型文件的插件
	filetype indent on  "设置某种类型语言的tab键大小
    syntax on
	execute "normal \<C-w>r"
	"autocmd vimenter * NERDTree
	"execute "NERDTree" "不能执行不知道为什么
	""let &runtimepath = "/data/data/com.termux/home/.vim/plugind"
    call plug#begin("~/.vim/plugind")
		Plug 'itchyny/lightline.vim'
		Plug 'preservim/nerdtree'
		Plug 'dense-analysis/ale'
		Plug 'tpope/vim-commentary'
		Plug 'iamcco/markdown-preview.vim'
		Plug 'atom-community/markdown-preview-plus'
		Plug 'othree/html5.vim'
		Plug 'alvan/vim-closetag'
		"Plug 'ycm-core/YouCompleteMe'
	call plug#end()

endfunction


function s:map()
		"map 在normal和visual模式中生效
		"nmap 在normal模式中生效
		"imap 在insert模式中生效
		"vmap 在visual模式中生效
		nmap <Space>h <C-w>h
		map  <Space>j <C-w>j
		map  <Space>k <C-w>k
		map  <Space>l <C-w>l
		map  tt		  :NERDTree<CR>
		map  tc 	  :NERDTreeClose<CR>
		map  ss		  :terminal bash<CR><C-w>r<C-w>k:resize +10<CR>
		map  sc       exit:q
		map  <C-s>    :w<CR>
endfunction

function s:test()
		command Del echo "hello"
endfunction



function s:main()
	call s:setVariable()
	call s:test()
	call s:map()
endfunction


call s:main()

