" CScope Settings

" Vim will look for cscope.out file everywhere starting from the current directory up to the root
" http://vim.wikia.com/wiki/Autoloading_Cscope_Database
function! LoadCscope()
	let db = findfile("cscope.out", ".;")
	if (!empty(db))
		let path = strpart(db, 0, match(db, "/cscope.out$"))
		set nocscopeverbose
		" suppress 'duplicate connection' error
		exe "cs add " . db . " " . path
		set cscopeverbose
	endif
endfunction
call LoadCscope()
" au BufEnter /* call LoadCscope()

set csprg=/usr/bin/cscope
set csto=0 " cscope DB search first
set cst " cscope DB tag DB search
set nocsverb " verbose off

nmap <F7> :cs find f 
