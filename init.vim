" ------------------------------------
"           Загрузка плагинов 
" ------------------------------------
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Список плагинов
" Файловое дерево
Plug 'scrooloose/nerdtree'
" Airline строка
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Навигация сверху
Plug 'SmiteshP/nvim-navic'
" Иконки
Plug 'ryanoasis/vim-devicons'
" Закритие скобочек
Plug 'vim-scripts/Auto-Pairs'
" Автодополнение
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" Сниппеты
" ----
" coq 3rd party
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

" Список тем
Plug 'w0ng/vim-hybrid'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" ------------------------------------
"              Настройки
" ------------------------------------

" ------------------------------------
" Основные
" ------------------------------------

" Включим чтение конфигурационных файлов .vimrc в текущей директории
set exrc
" Запретим опасные команды в локальных .vimrc файлах (эта опция должна идти в вашем
" ~/.vimrc после запрещаемых команд, таких как write)
set secure

" Кодировка
set fileencoding=utf-8

" Использовать системный буфер обмена
set clipboard=unnamedplus

" Быстрый скролинг
set ttyfast

" ------------------------------------
" Оформление
" ------------------------------------

" Цветовая схема
set background=dark
colorscheme hybrid

" Отключение -- INSERT -- итд
set noshowmode
" Подцветка синтакса
syntax on
" Показывать номера строк
set number

" Курсор
" Подсвечивать строку с курсором
set cursorline

" Окна
" Не делать все окна одинакового размера
set noequalalways
" Высота окон по-умолчанию 20 строк
set winheight=20

" -----------------------------------------
" Поиск
" -----------------------------------------

" Игнорировать регистр при поиске
set ic
" Подсвечивать поиск
set hls
" Использовать последовательный поиск
set is

" -----------------------------------------
" Командная строка
" -----------------------------------------

" Bash-подобное дополнение командной строки
"set wildmode=longest:list,full

" -----------------------------------------
" Набор текста
" -----------------------------------------

" Отступы и табуляция
" Отступы пробелами, а не табуляциями
set expandtab
" Ширина табуляции в колонках
set ts=2
" Количество пробелов (колонок) одного отступа
set shiftwidth=2
" Новая строка будет с тем же отступом, что и предыдущая
set autoindent
" Умная расстановка отступов (например, отступ при начале нового блока)
set smartindent

" Подсказки
set completeopt=menu,preview

" Настройка под конкретные типы файлов

" С/C++ файлы
" Расставлять отступы в стиле С
autocmd filetype c,cpp set cin 
" Показывать колонку
autocmd filetype c,cpp set cc=80 

" make-файлы
" В make-файлах нам не нужно заменять табуляцию пробелами
autocmd filetype make set noexpandtab
autocmd filetype make set nocin

" html-файлы
" Не расставлять отступы в стиле С в html файлах
autocmd filetype html set noexpandtab
autocmd filetype html set nocin

" css-файлы
" Не расставлять отступы в стиле C и не заменять табуляцию пробелами
autocmd filetype css set nocin
autocmd filetype css set noexpandtab

" python-файлы
" Не расставлять отступы в стиле С
autocmd filetype python set nocin

" ------------------------------------
"          Загрузка плагинов 
" ------------------------------------

"Airline
"Включить поддержку Powerline шрифтов
let g:airline_powerline_fonts = 1 
"Не показывать текущий маппинг
let g:airline#extensions#keymap#enabled = 0 
"Кастомная графа положения курсора
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" 
"Поддержка unicode
let g:Powerline_symbols='unicode' 
" Tabline
let g:airline#extensions#tabline#enabled = 0
" NERDTree 
let g:airline#extensions#nerdtree_statusline = 1

" NERDTree
" Открывать дерево по нажатию Ctrl+n
map <c-n> :NERDTreeToggle<cr>
" Немного магии, если мы запустим Vim без указания файла для редактирования,
" то дерево будет открыто, а если будет указан файл, то дерево
" открыто не будет
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Открывать новые окна справа
set splitright

" coq
let g:coq_settings = { 'auto_start': 'shut-up' }

