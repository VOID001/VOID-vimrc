# VOID-vimrc
VOID's vim configuration QWQ

###Contents
```
> vim-airline   --- A tool for beautify vim status line
> syntastic     --- Easy-to-use Syntax checking Plugin
> nerdtree      --- Show the directory structure
> vim-fugitive  --- Git supported
> YouCompleteMe --- Fancy autocomplete plugin
> vimproc       --- VimShell Dependencies
> vimshell      --- Using shell in vim
> YCM-Generator --- Ycm auxiliary, show you an easy-to-use YCM
```

###How-to-Guide

* First change to your .vim directory and make a dir named 'bundle'
* Then exec this command `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* Then put replace your .vimrc file with the .vimrc file in my repo ~ 
* Then open a new vim editor and enter `:PluginInstall` __make sure you have network connection enabled__
* After this all the plugins except Ycm should work well 
* Then if you want to enable Ycm just put a .ycm_extra_conf.py in your current directory , or in any father directory, Here is a .ycm_extra_conf.py for C++ use (in this repo)
* And feel free to hack on it ~ !


### Some basic usage
* \\\\ for open the tree view
* C-n for a new tab
* C-l for moving to the right tab
* C-h for moving to the left tab
* If you are in a project root directory , use :YcmGenerator to generate the autocomplete and syntax checking confiugration file for your project =O=
> If you want to enable the plugin vimshell, You might need to build it first. See the help message for more details


### How to Contribute
* Just make Pull Request as you want!
