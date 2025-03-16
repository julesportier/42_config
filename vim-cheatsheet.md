# VIM CHEATSHEET



## Modes

`esc` or `<C-c>`, return to normal mode
`v`, visual mode (text selection)
`V`, visual line mode
`<C-v>`, visual block mode
`R`, replace mode (permits to move line too)
### Normal to Insert
`i`, insert before cursor
`I`, insert to line start
`a`, insert after cursor
`A`, append to line end
`o`, insert on a newline below (`O` above)


## Motions

`<C-g>`, show position in the file
`gg`, go to file beginning
`G`, go to file end
`3G` or `:3<CR>`, go to line 3
`0`, go to line start
`^`, go to first non blank character
`$`, go to line end
`w`, go to next word
`b`, go to word beginning
`e`, go to word end
`3w`, go three words next
`%`, go to matching parenthesis
`t"char"`(reverse `T`), until char (go to character before)
`f"char"`(reverse `F`), find char

### Jumps
`<C-o>`, go to precedent cursor position (`<C-i>`, next)
Needs a tag file index creation command like universal ctags
`<C-]>`, jump to next tag
`<C-t>`, go back to precedent tag

### Cursor
`<C-d>`, move the cursor downward half a screen
`<C-u>`, move the cursor upward half a screen
`<C-e>`, move the screen downward one line
`zt`, bring the current line near the top of the screen (`zz`, middle, `zb`, bottom)

### Folds
`zf{motion}`, create fold
`za`, toggle fold (`zA` recursively)


## Change text
`x`, "suppr"
`X`, "backspace"
`r`, replace character
`s`, replace character and switch to insert mode
`:m number`, move line up or down (+- for relative movement)
`.`, repeat last edit at cursor position
`c<operator>`, change word, go to insert mode (works the same as d)
`d<operator>`, cut/delete (dw delete first word, d$ delete end of line...)
`dd`, delete whole line
`di[w]`, delete inside the object specified (here word)
`y<operator>`, yank (copy)
`yy`, copy full line
`"+<operator>`, access system clipboard
`p`, put (paste) (whole lines go on the line below the cursor, P before)
`:r <filename or command>`, read/retrieve file content below cursor
`U`, change selection to upper case (u, lower case. `gU<motion>` in normal mode)
`<C+k "digraph-code"`, in insert mode insert digraph (:h digraph)
`:'<,'>norm(al)`, apply normal command on selection
`gc{motion | c}`, comment toggle
### Macros
`q{key}`, record macro
`[n]@{key}`, execute macro n times
macros can be executed on multiple lines in visual mode


## Search-commands
`f (reverse F)`, find character in line
`* (reverse #)`, select word under cursor, find next occurence
`/word[\option](? backward)`, search word
`:%s/old/new/gc`, subsitute in whole file (%, `.` for line) and every occurence by line (g) with asking (c)
`:<lineStart>,<lineEnd>s/\<old\>/new/[flag]`, subsitute old with new (if \<old\> return only precise word)
`:%s/old\(.\)/new\1new`, capture group to reput the old char (numbers of `.`) in new
`n`, next word
`N`, previous word
`<C-l>`, clear higlighted text


## Get infos

### Completion/help
`"command beggining" <C-d>`, show list of commands
`tab`, completion
`K`, open the man on the word
`:help user-manual`, a lot of things here
`gO`, show 'document symbol' e.g. table of content
`<C-n>`, trigger buffer context completion
`<C-x><C-o>`, trigger omnifunc completion (or lsp)

### Characters
`ga`, print ascii value of the char under the cursor


## Multiple files edition

### Splits
`<C-w> w`, change split
`<C-w> hjkl`, switch to split
`<C-w> o`, close all splits but current
`<C-w> {nbr}[+-]`, vertically resize split
`<C-w> _`, vertically maximize
`<C-w> {nbr}[><]`, horizontally resize split
`<C-w> |`, horizontally maximize
`<C-w> =`, all splits at same size

### Tabs
`:tabnew` or `:tabe`
`:tabclose` or `:tabc`
`:tabonly` or `:tabo`, close every tabs except active one
`[nbr]gt`, go to next tab (T reverse), if nbr is specified go to tab nbr

### Buffers
`:ls`, list buffers
`:b 1`, switch to buffer 1 (`sb` as a split)
`:bd 1`, close buffer 1
`:bn`, next buffer (`bp` previous)

### Netrw (file explorer)
`:Ex`, open file explorer
`:Hex`, open file explorer as an horizontal split
`:Sex`, open file explorer in file directory as an horizontal split
`<CR>`, open file/dir under cursor
`%`, create file
`d`, create dir
`cd`, cd to browsing dir
`R`, rename
`D`, delete file/dir

### Quickfix list
`:cl`, show list (`esc` to close)
`:cope[n]`, open list in a buffer
when in list buffer: `<C-w><CR>` to jump to the error on a new window
`grep {string} [files(eg *.c)]`, load grep results to list
`cdo {cmd}`, execute a command on each quickfix elements (one by one -> confirmation...)

## Basic editing commands
`:w [filename or command]`, save (in Visual mode after pressing : it it's possible to save only the selected text on a file)
`:q`, quit or close window
`:q!`, force quit
`:! command`, execute an external command
`:edit FILENAME`, edit file
`:e ++ff=dos` or unix or mac, change file format, line ending CR or CRLF, (remove ^M when git restore on win)

`u`, undo
`U`, restore whole line
`<C-r>`, redo

`:set [no(disable)][inv(invert)]<options>[?(return option value)]`, set option (ic, ignore case; hl, highlight; ic, inner sentence counter...)

## Terminal
`:term(inal)`, open terminal
`<C-\><C-n>`, return to normal mode
`<C-d>`, exit and close terminal window
`:packadd termdebug`, load the debug plugin
`:Termdebug a.out`, open gdb for a.out executable in nvim
`:B(reak)`, add breakpoints on source window
