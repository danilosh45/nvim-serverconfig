call plug#begin()
Plug 'jiangmiao/auto-pairs'
call plug#end()

"autopair configuracion
let g:AutoPairs = {'(':')', '[':']', '{':'}'}
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"'}

" Habilita resaltado de sintaxis 
syntax on

" Muestra números de línea
set number

" Habilita resaltado de la línea actual
set cursorline

" Habilita resaltado de la columna actual
"set cursorcolumn

" Habilita la identación automática
set autoindent

 " Usa espacios en lugar de tabulaciones
set expandtab

" Establece el ancho de la tabulación en 2 espacios
set tabstop=2

" Establece el ancho de la indentación en 2 espacios
set shiftwidth=2

" Deshabilita el archivo de respaldo
set nobackup
set nowritebackup

" Deshabilita la creación de archivos swap
set noswapfile

" Muestra información del archivo actual en la barra de estado
set laststatus=2
 
" Habilita el resaltado de búsqueda
set hlsearch

 "Ignora mayúsculas/minúsculas en las búsquedas
set ignorecase
set smartcase

"Mapeos
 " Guarda con Ctrl+Enter
nnoremap <C-Return> :w<CR>

"Abrir el explorador de archivos con sf netrew
nnoremap sf :Explore<CR>

set encoding=utf-8
set langmenu=en_US.UTF-8
"Borrar texto sin guardar en el portapapeles
nnoremap x "_x"

"Incrementa y decrementa con las teclas - + 
nnoremap + <C-a>
nnoremap - <C-x>

"manejo de tabs
nnoremap te :tabedit<CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT
"ventanas
nnoremap sv :vsplit<CR>
nnoremap ss :split<CR>

" En el explorador de archivos, crea un nuevo archivo con 'N'
autocmd FileType netrw nmap <buffer> N :call inputsave()\|let name = input('Enter file name: ')\|call inputrestore()\|execute 'e %:h/' . name<CR>
" En el explorador de archivos, regresa al directorio padre con 'h'
" autocmd FileType netrw nnoremap <buffer> h :Explore ..<CR>

"Define el esquema de colores personalizado
highlight Normal guifg=#d3b58d guibg=#041818
highlight Comment guifg=#3fdflf
highlight Function guifg=white
highlight Keyword guifg=white
highlight String guifg=#0fdfaf
highlight Identifier guifg=#c8d4ec
highlight WarningMsg guifg=#504038
" Cambia el color del cursor
set cursorline
highlight Cursor guifg=black guibg=lightgreen
" Cambia el color de fondo
highlight Normal guibg=#072626
" Cambia el color de la región seleccionada
highlight Visual guibg=blue
" Cambia el color del modo de línea
highlight StatusLine guifg=white guibg=black
highlight StatusLineNC guifg=white guibg=black
" Establece la fuente y el tamaño
set guifont=Hack:h12
set termguicolors
"End personalization
