source ~/.vimrc

if has('gui_macvim')
  :VimShell
	set antialias
	set guioptions-=t	" stop showing tools bar
	set guioptions-=r	" stop showing right scrolling bar
	set guioptions-=R
	set guioptions-=l	" stop showing left scrolling bar
	set guioptions-=L

  set guicursor=a:blinkon0

  set guifont=Menlo\ Regular:h12

	set imdisable		" turn off IME
endif
