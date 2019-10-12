# VOID-vimrc
VOID's vim & nvim configuration QWQ

## VIM Configuraion

### Contents
```
> vim-airline   --- A tool for beautify vim status line
> syntastic     --- Easy-to-use Syntax checking Plugin
> nerdtree      --- Show the directory structure
> vim-fugitive  --- Git supported
> YouCompleteMe --- Fancy autocomplete plugin
> vimproc       --- VimShell Dependencies
> vimshell      --- Using shell in vim
> YCM-Generator --- Ycm auxiliary, show you an easy-to-use YCM
> auto-pairs    --- Insert or delete brackets, parens, quotes in pair
```

### How-to-Guide

* First change to your .vim directory and make a dir named 'autoload'
* Then exec this command 

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
* Then put replace your .vimrc file with the vimrc file in my repo ~ 
* Put all other `*.vim` file in ~/.vim/
* Then open a new vim editor and enter `:PlugInstall` __make sure you have network connection enabled__
* After this all the plugins except Ycm should work well 
* YCM should be compiled first, to compile YCM, just cd to `~/.vim/bundle/YouCompleteMe/` then run `/path/to/your/python2 install.py --clang-completer` 
* Then if you want to enable Ycm just put a .ycm_extra_conf.py in your current directory , or in any father directory, Here is a .ycm_extra_conf.py for C++ use (in this repo)
* And feel free to hack on it ~ !


### Some basic usage
* \\\\ for open the tree view
* C-n for a new tab
* C-l for moving to the right tab
* C-h for moving to the left tab
* C-F9 for compiling, currently support C, C++ and Java
* F9 for compiling and running, currently support C, C++, Java, Python and Ruby
* If you are in a project root directory , use :YcmGenerator to generate the autocomplete and syntax checking confiugration file for your project =O=
> If you want to enable the plugin vimshell, You might need to build it first. See the help message for more details




## Neovim Configuraion

neovim has native terminal support. Neovim plugin can be written in ruby, lua, python, vimL, etc. It's a little bit slower than vim, but you can have a try :P

### Contents
```
> vim-airline   --- A tool for beautify vim status line
> syntastic     --- Easy-to-use Syntax checking Plugin
> nerdtree      --- Show the directory structure
> vim-fugitive  --- Git supported
> YouCompleteMe --- Fancy autocomplete plugin
> vimproc       --- VimShell Dependencies
> vimshell      --- Using shell in vim
> YCM-Generator --- Ycm auxiliary, show you an easy-to-use YCM
> auto-pairs    --- Insert or delete brackets, parens, quotes in pair
> CtrlP         --- Effectively navigate and search files in your project
> wakatime      --- Wakatime vim supported, provide analysis of your coding activity
> hardmode      --- vim hardmode, you know what it is.
> nvim-completion-manager --- Completion plugin for Language Client
> autozimu/LanguageClient-neovim --- Language Client, help vim talk with LSP Language server
> vim-go        --- Golang vim plugin
```

### How-to-Guide

* Install [vim-plug](https://github.com/junegunn/vim-plug) first.
* Then replace your ~/.config/nvim/init.vim file with the init.vim file in my repo ~ 
* Then open a new neovim editor and enter `:PlugInstall` __make sure you have network connection enabled__
* Install cquery / ccls, It will be your C/C++ Language Server
* You can use bear make to generate compile command database.
* If you want to use golang mode, please run :GoInstallBinaries in your editor.

### Some basic usage
* \\\\ for open the tree view
* C-n for a new tab
* C-l for moving to the right tab
* C-h for moving to the left tab
* C-F9 for compiling, currently support C, C++ and Java
* F9 for compiling and running, currently support C, C++, Java, Python and Ruby
  * :GoImports, :GoBuild are useful commands for gophers.
  * __BUILT IN TERMINAL SUPPORT!__ Just Type C-t t in normal mode, and a terminal tab will open. Change to insert mode to type commands, change back to normal mode and you can switch between tabs like before XD, have fun~
  * If you do not like wakatime, just remove it, I will disable it by default
  * Ctrl + P will open a buffer, you can search for files there, it's convenient.


## Contribute to this repo
* Just make Pull Request as you want!
