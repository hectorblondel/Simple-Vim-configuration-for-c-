syntax on
set number
set showmatch
set autoindent
set smartindent

inoremap ( () 
inoremap { {}
inoremap [ []
inoremap ' ''
inoremap " ""

command Gpp :w | ! set $1 `echo "%" | sed 's/\.cpp//g'` ;g++ -o $1 "%" ; chmod o+x $1; clear ; ./$1
"map <F2> :echo 'Current time is ' . strftime('%c')<CR>
