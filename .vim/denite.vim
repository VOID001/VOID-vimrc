	" Change file_rec command.
	call denite#custom#var('file_rec', 'command',
	\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
	" For ripgrep
	" Note: It is slower than ag
	call denite#custom#var('file_rec', 'command',
	\ ['rg', '--files', '--glob', '!.git', ''])
	" For Pt(the platinum searcher)
	" NOTE: It also supports windows.
	call denite#custom#var('file_rec', 'command',
	\ ['pt', '--follow', '--nocolor', '--nogroup', '-g:', ''])

	" Change mappings.
	call denite#custom#map(
	      \ 'insert',
	      \ '<C-j>',
	      \ '<denite:move_to_next_line>',
	      \ 'noremap'
	      \)
	call denite#custom#map(
	      \ 'insert',
	      \ '<C-k>',
	      \ '<denite:move_to_previous_line>',
	      \ 'noremap'
	      \)

	" Change matchers.
	call denite#custom#source(
	\ 'file_mru', 'matchers', ['matcher_fuzzy', 'matcher_project_files'])
	call denite#custom#source(
	\ 'file_rec', 'matchers', ['matcher_cpsm'])

	" Change sorters.
	call denite#custom#source(
	\ 'file_rec', 'sorters', ['sorter_sublime'])

	" Add custom menus
	let s:menus = {}

	let s:menus.zsh = {
		\ 'description': 'Edit your import zsh configuration'
		\ }
	let s:menus.zsh.file_candidates = [
		\ ['zshrc', '~/.config/zsh/.zshrc'],
		\ ['zshenv', '~/.zshenv'],
		\ ]

	let s:menus.my_commands = {
		\ 'description': 'Example commands'
		\ }
	let s:menus.my_commands.command_candidates = [
		\ ['Split the window', 'vnew'],
		\ ['Open zsh menu', 'Denite menu:zsh'],
		\ ]

	call denite#custom#var('menu', 'menus', s:menus)

	" Ag command on grep source
	call denite#custom#var('grep', 'command', ['ag'])
	call denite#custom#var('grep', 'default_opts',
			\ ['-i', '--vimgrep'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', [])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])

	" Ack command on grep source
	call denite#custom#var('grep', 'command', ['ack'])
	call denite#custom#var('grep', 'default_opts',
			\ ['--ackrc', $HOME.'/.ackrc', '-H',
			\  '--nopager', '--nocolor', '--nogroup', '--column'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', ['--match'])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])

	" Ripgrep command on grep source
	call denite#custom#var('grep', 'command', ['rg'])
	call denite#custom#var('grep', 'default_opts',
			\ ['--vimgrep', '--no-heading'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])

	" Pt command on grep source
	call denite#custom#var('grep', 'command', ['pt'])
	call denite#custom#var('grep', 'default_opts',
			\ ['--nogroup', '--nocolor', '--smart-case'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', [])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])

	call denite#custom#source('file_mru', 'converters',
	      \ ['converter_relative_word'])

	" Define alias
	call denite#custom#alias('source', 'file_rec/git', 'file_rec')
	call denite#custom#var('file_rec/git', 'command',
	      \ ['git', 'ls-files', '-co', '--exclude-standard'])

	" Change default prompt
	call denite#custom#option('default', 'prompt', '>')

	" Change ignore_globs
	call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
	      \ [ '.git/', '.ropeproject/', '__pycache__/',
	      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

nmap <leader>gb :Denite buffer<CR>
