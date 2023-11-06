# My neovim config
Author: @George Wong

### Basic

mode switch:
- normal -> insert: i, I, a, A, o, O
- insert -> normal: CapsLock  

[n]save and quit:
- S: write.
- Q: quit.

[n]delete:
- d + d: delete current line.
- d + (number) + direction: delete characters in the specified direction.
- d + w: delete the after word.
- d + i + <w(word) or other specified char.>: delete in the ...
- d + f + <the specified char>: delete characters until the specified character.

[n]yank:
- y + y: copy current line.
- y + (number) + direction: copy characters in the specified direction.
- y + w: copy the after word.
- y + i + <w(word) or other specified char.>: copy in the ...
- y + f + <the specified char>: copy characters until the specified character.
- shift+y: copy to system pasteboard.

[n]change(will swithc to insert mode!):
- c + c: change curretn line.
- c + (number) + direction: change characters in the specified direction.
- c + w: change the after word.
- c + i + <w(word) or other specified char.>: change in the ...
- c + f + <the specified char>: change characters until the specified character.

[n]search:
- /: enter searcch.
- Enter: makesure search result.
- n: jump to the next result.
- N: jump to the pervious result.
- space + Enter: disable hightline.

[n]cursor move:
- gk: move to the previous line of the paragraph.
- gj: move to he next line of the paragraph.
- ctrl+y: control the view to up.
- ctrl+e: control the view to down.
- zz: move the cursor line to the center of view.

[n]cursor jump:
- Ctrl-i: Jump to the next position.
- Ctrl-o: Jump to the Old position.

[i]cursor move:

[?]cursor move:

[n]windows management
- space + hjkl: switch to he special direction window.
- s+direction: add a new window in the special direction.
- direction key: Change the windows size.

[n]table management
- t+a: create a new tab for new file.
- t+A: create a new tab for the current file.
- t+h: switch to the left table.
- t+l: switch to the right table.
- t+m+h: move current table to left.
- t+m+l: move current table to reight.

### Shortcuts

- [n]space+rc: open vimrc.
- [n]all: select all.
- [n]Ctrl+p: jump to the previous position.
- [n]Ctrl+n: jump to the latter position.
- [n]space+space: jump to the sepcial postion: <++>
- [n]run current code.
- [n]gf: go to the file.
- [n]gd: go to the definition.
- [i]ctrl+y: insert a pair of {} and go to the next line.
