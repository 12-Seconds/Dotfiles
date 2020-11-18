function! Maps()

    echo " "
    echo "Custom mappings:"

    echohl WarningMsg

    echo " "
    echo "Meta+T: Filer Tree \t Meta+M: Minimap \t Meta+U: Undo tree \t Meta+G: Toggle distractions \t Meta+L: Lint with ALE \t\t Meta+F: Format code \t\t Meta+P: Fuzzy finder \t\t Control+Meta+N: Floating terminal \t Control+Meta+T: Tagbar"
    echo " "
    echo "Meta+w: Delete buffer \t Meta+n: New buffer \t Meta+Tab: Next buffer \t Shift+Meta+Tab: Next tab \t Control+W-V: Vertical split \t Control+W-H: Horizontal split \t Arrow Keys: Window navigation \t Meta+Arrow Keys: Window resizing"
    echo " "
    echo "F1: Copy to clipboard \t F2: Trim whitespace \t F3: Toggle cursorbind \t F4: Compile code \t\t F5: Open file manager \t\t F6: Open terminal \t\t F7: Toggle fold \t\t F8: Create fold \t\t\t F9: Delete fold"
    echo " "

    echohl None

endfunction

map <silent> <leader><leader> :call Maps()<CR>

function! ToggleCursorbind()
  if &cursorbind == 1
    set nocursorbind
  else
    set cursorbind
  endif
endfunction
