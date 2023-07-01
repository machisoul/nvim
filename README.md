# My neovim config
Author: @George Wong

### Basic

mode switch:
- normal -> insert: h, H, a, A, o, O
- insert -> normal: CapsLock  

[n]save and quit:
- S: write.
- Q: quit.

[n]delete:
- d + d: delete current line.
- d + (number) + direction: delete characters in the specified direction.
- d + w: delete the after word.
- d + h(i) + <w(word) or other specified char.>: delete in the ...
- d + f + <the specified char>: delete characters until the specified character.

[n]yank:
- y + y: copy current line.
- y + (number) + direction: copy characters in the specified direction.
- y + w: copy the after word.
- y + h(i) + <w(word) or other specified char.>: copy in the ...
- jy + f + <the specified char>: copy characters until the specified character.
- shift+y: copy to system pasteboard.

[n]change(will swithc to insert mode!):
- c + c: change curretn line.
- c + (number) + direction: change characters in the specified direction.
- c + w: change the after word.
- c + h(i) + <w(word) or other specified char.>: change in the ...
- c + f + <the specified char>: change characters until the specified character.

[n]search:
- /: enter searcch.
- Enter: makesure search result.
- n: jump to the next result.
- N: jump to the pervious result.
- space + Enter: disable hightline.

[n]cursor move:
- gi: move to the previous line of the paragraph.
- gk: move to he next line of the paragraph.
- I: move up 5 lines.
- K: move donw 5 lines.
- J: move 7 characters to the left.
- L: move 7 characters to he right.
- ctrl+i: move up half a page.
- ctrl+k: move donw half a page.
- ctrl+j: move to the first characters of this paragraph.
- ctrl+l: move to the last characters of this paragraph.
- zz: move the cursor line to the center of view.

[i]cursor move:
- ctrl+a: insert at the end of this paragraph.
- ctrl+h: insert at the begin of this paragraph
- ctrl+j: insert at the previous character.
- ctrl+l: insert at the next character.

[c]cursor move:
- ctrl+h: Home
- ctrl+e: End
- ctrl+i: Up
- ctrl+k: Down
- ctrl+j: Left
- ctrl+l: Right

[n]windows management
- space + direction: switch to he special direction window.
- s+direction: add a new window in the special direction.

[n]table management
- t+a: create a new tab for new file.
- t+A: create a new tab for the current file.
- t+j: switch to the left table.
- t+l: switch to the right table.
- t+m+j: move current table to left.
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
