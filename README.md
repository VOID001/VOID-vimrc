VOID-vimrc
====

## Supported Features:
* Easy multi-tab support + navigation
* C/C++, Rust, Golang, Linter support + Navigation + Completion. Shellscript Linter Support
* Nice and informative airline
* Cloud sync notebook based on vim-wiki (Sync to any git server you want)
* NERDTree Support


## Requirement

Basic requirement
* Vim >=8.0 (Of course! This is a vim repo)
* curl
* GNU Makefile
* GNU Stow

For completion support, you may need the following dependencies:

* C/cpp: ccls
* Rust: rust-analyzer
* Golang: gopls

## Installation

* Run `make simulation` to see what will happen if you run the installation
* Run `make install` to install the config files into your home directory

## Usage

* For installation just need to follow the **installation** section
* NOTE: in order to make vim-wiki works correctly, you need to change the variable `g:viwiki_user_root` in .vim/vim-wiki.vim

* \\\\ for open the tree view
* \\ww for open the vim-wiki index page
* C-n for a new tab
* C-l for moving to the right tab
* C-h for moving to the left tab
* <Tab> in insert mode for completion (powered by ALE + Deoplete)
