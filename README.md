# SuperMemoVim: Learning at the Speed of Editing By Editing at the Speed of Thought

## WORK IN PROGRESS PLEASE DON'T USE YET

![https://raw.githubusercontent.com/MasterHowToLearn/SuperMemoVim/master/images/supermemovim.png]

vim emulation for vim-like controls in SuperMemo.

This is a fork from the original [vim_ahk](https://github.com/rcmdnk/vim_ahk/releases). All credits go to the original developer. For details please visit the original repo.

## Installation

Download the zip; unzip it and open vim.ahk to use. Make sure you've installed [AutoHotKey](https://www.autohotkey.com/) first.

## Other Options

| Option                 | Description                                                                                                                                                                            | Default |
| :--------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------ |
| VimRestoreIME          | If 1, IME status is restored at entering insert mode.                                                                                                                                  | 1       |
| VimJJ                  | If 1, `jj` changes mode to Normal from Insert.                                                                                                                                         | 0       |
| VimLongEscNormal       | If 1, pushing escape sends escape to the underlying application, while holding escape sets normal mode.                                                                                | 0       |
| VimTwoLetterEsc        | A list of character pairs to press together during insert mode to get to normal mode. For example, a value of `jf` means pressing `j` and `f` at the same time will enter normal mode. |         |
| VimDisableUnused       | Disable level of unused keys in Normal mode (see below for details).                                                                                                                   | 3       |
| VimSetTitleMatchMode   | SetTitleMatchMode: 1: Start with, 2: Contain, 3: Exact match                                                                                                                           | 2       |
| VimSetTitleMatchModeFS | SetTitleMatchMode: Fast: Text is not detected for such edit control, Slow: Works for all windows, but slow                                                                             | Fast    |
| VimIconCheckInterval   | Interval to check vim_ahk status (ms) and change tray icon. If it is set to 0, the original AHK icon is set.                                                                           | 1000    |
| VimVerbose             | Verbose level (see below for details).                                                                                                                                                 | 0       |

If you want to change them directly in the script, add these variable before `Vim := new VimAhk()` in vim.ahk or write before including vim.ahk

Or you can use GUI option setting described below.

VimIconCheckInterval:

If it is set non-zero, the tray icon is immediately changed when the mode is changed.
This interval defines the interval when the Window is changed (e.g. vim_ahk enabled window to disabled window).

Verbose level:

- 1: Nothing.
- 2: Minimum tooltip (Mode name only).
- 3: Tooltip.
- 4: Msgbox.

Disable level:

- 1: Do not disable unused keys
- 2: Disable alphabets (+shift) and symbols
- 3: Disable all including keys with modifiers (e.g. Ctrl+Z)

## Main Modes

Here are the main modes.

| Mode         | Description                                                                                                                                                                      |
| :----------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Insert Mode  | Normal Windows state                                                                                                                                                             |
| Normal Mode  | As in vim, a cursor is moved by hjkl, w, etc... and some vim like commands are available.                                                                                        |
| Visual Mode  | There are three visual mode: Character-wise, Line-wise, and Block-wise. Block-wise visual mode is valid only for applications which support block-wise selection (such TeraPad). |
| Command Mode | Can be used for saving file/quitting.                                                                                                                                            |

The initial state is `Insert Mode`, then `Esc` or `Ctrl-[` brings you to Normal Mode.

In Normal Mode, `i` is the key to be back to Insert Mode.

`v`, `V` and `Ctrl-v` are the key to the Character-wise, Line-wise, and Block-wise
Visual Mode, respectively.

After pressing `:`, a few commands to save/quit are available.

## Available commands in Insert Mode

|    Key/Commands    | Function                                                         |
| :----------------: | :--------------------------------------------------------------- |
|     ESC/Ctrl-[     | Enter Normal Mode. Holding (0.5s) these keys emulate normal ESC. |
|         jj         | Enter Normal Mode, if enabled.                                   |
| Custom two letters | If two-letter mapping is set.                                    |

ESC/Ctrl-[ switch off IME if IME is on.
ESC acts as ESC when IME is on and converting instructions.
Ctrl-[ switches off IME and enters Normal Mode even if IME is on.

If using a custom two-letter hotkey to enter normal mode, the two letters must be different.

## Available commands in Normal Mode

### Mode Change

| Key/Commands | Function                                                                                                            |
| :----------: | :------------------------------------------------------------------------------------------------------------------ |
| i/I/a/A/o/O  | Enter Insert Mode at under the cursor/start of the line/next to the cursor/end of the line/next line/previous line. |
|  v/V/Ctrl-v  | Enter Visual Mode of Character-wise/Line-wise/Block-wise.                                                           |
|      :       | Enter Command Line Mode                                                                                             |

### Move

| Key/Commands  | Function                                                                        |
| :-----------: | :------------------------------------------------------------------------------ |
|    h/j/k/l    | Left/Down/Up/Right.                                                             |
|     0/\$      | To the start/end of the line.                                                   |
| Ctrl-a/Ctrl-e | To the start/end of the line (emacs like).                                      |
|       ^       | To the starting non-whitespace character of the line.                           |
|    w/W/e/E    | Move a word forward (all work the same way: goes to the beginning of the word). |
|      b/B      | Move a word backward (b/B: the beginning of the word).                          |
| Ctrl-u/Ctrl-d | Go Up/Down 10 line.                                                             |
| Ctrl-b/Ctrl-f | PageUp/PageDown.                                                                |
|     gg/G      | Go to the top/bottom of the file                                                |

In addition, `Repeat` is also available for some commands.

| Example Commands | Action               |
| :--------------: | :------------------- |
|        4j        | Down 4 lines         |
|        3w        | Move 3 words forward |
|       100j       | Down 100 lines       |

### Yank/Cut(Delete)/Change/Paste

| Key/Commands | Function                                                                                                                                                                           |
| :----------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|    yy, Y     | Copy the line.                                                                                                                                                                     |
|      dd      | Cut the line.                                                                                                                                                                      |
|      D       | Cut from here to the end of the line.                                                                                                                                              |
|      cc      | Change the line (enter Insert Mode).                                                                                                                                               |
|      C       | Cut from here to the end of the line and enter Insert Mode.                                                                                                                        |
|     x/X      | Delete a character under/before the cursor (not registered in the clipboard).                                                                                                      |
|     p/P      | Paste to the next/current place. If copy/cut was done with line-wise Visual Mode, it pastes to the next/current line. Some commands (such yy/dd) also force to paste as line-wise. |

y/d/c+Move Command can be used, too.

- e.g.) `yw` -> copy next one word.
- e.g.) `d3w` -> delete next 3 words.

### Others

| Key/Commands | Function                                                                                      |
| :----------: | :-------------------------------------------------------------------------------------------- |
|   u/Ctrl-r   | Undo/Redo.                                                                                    |
|     r/R      | Replace one character/multiple characters.                                                    |
|      J       | Combine two lines.                                                                            |
|      .       | It is fixed to do: `Replace a following word with a clipboard` (useful to use with a search). |
|      ~       | Change case.                                                                                  |
|      /       | Start search (search box will be opened)                                                      |
|     n/N      | Search next/previous (Some applications support only next search)                             |
|      \*      | Search the word under the cursor.                                                             |
|    ZZ/ZQ     | Save and Quit/Quit.                                                                           |

## Available commands in Visual Mode

| Key/Commands | Function                                                                 |
| :----------: | :----------------------------------------------------------------------- |
|  ESC/Ctrl-[  | Enter Normal Mode.                                                       |
| Move command | Most of move commands in the Normal Mode are available.                  |
|   y/d/x/c    | Copy/Cut/Cut/Cut and insert (`d`=`x`)                                    |
|   Y/D/X/C    | Move to the end of line, then Copy/Cut/Cut/Cut and Insert Mode (`D`=`X`) |
|      \*      | Search the selected word.                                                |

## Available commands at Command mode

| Key/Commands | Function                     |
| :----------: | :--------------------------- |
|  ESC/Ctrl-[  | Enter Normal Mode.           |
|  w + RETURN  | Save                         |
|  w + SPACE   | Save as                      |
|    w + q     | Save and Quit                |
|      q       | Quit                         |
|      h       | Open help of the application |
