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


### Shortcuts

- [n]space+rc  
- gf: go to the file.
- Ctrl+o: jump to the previous position.
- Ctrl+d: jump to the latter position.
- ta: create a new tab for new file.
- tA: create a new tab for the current file.
- tj: go to the left tab.
- tl: go to the right tab.
- s+<direction map>: create the new window
- space+<direction map>: jump to the special direction window
- space+space: jump to the sepcial postion: <++>
