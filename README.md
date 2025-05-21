# Emacs

My emacs configuration.

## Distributions

When I try new distributions, I put their configuration in [the `distributions/` directory](./distributions/). I use scripts in [the `scripts/` directory](./scripts/) to create symlinks for the configurations at their expected path.

## Emacs Cheatsheet

### Keybinds legend

| Key/Combo         | Description                                                                                                      |
| ----------------- | ---------------------------------------------------------------------------------------------------------------- |
| `RET`             | `Enter` key                                                                                                      |
| `SPC`             | `Space` key                                                                                                      |
| `C-<key>`         | `Control` + a key (i.e. `C-x` = `Control+x`)                                                                     |
| `C-<key> C-<key>` | `Control` + a key, then (still holding control) another `Control` + a key (i.e. `C-x C-c` = `Control(hold)+x+c`) |
| `C-<key> <key>`   | `Control` + a key, then another key without control (i.e. `C-x c` = `Control+x c`)                               |
| `M-<key>`         | `Alt` + a key (i.e. `M-x` = `ALT+x`)                                                                             |

### Default Keybinds

| Command                             | Description                                                                                                                                                                                         |
| ----------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `F10`                               | Focus emacs' top menu                                                                                                                                                                               |
| `C-h t`                             | Open the emacs tutorial                                                                                                                                                                             |
| `C-h b`                             | Open searchable keybinds buffer                                                                                                                                                                     |
| `C-h r`                             | Browse the built-in manual                                                                                                                                                                          |
| `C-h <key>`                         | Get help menu for given key                                                                                                                                                                         |
| `C-h f`                             | Get help menu for a given function (i.e. `C-h f info`). Add `i` to open the manual page for given function                                                                                          |
| `C-h m`                             | Describe active modes in current buffer                                                                                                                                                             |
| `M-x help-quick` / `C-h C-q`        | Pops up a little window with commonly used keybindings                                                                                                                                              |
| `M-x customize-group`               | Open function help menu with tab completion                                                                                                                                                         |
| `M-x customize-browse`              | Browse available functions in a tree-like structure                                                                                                                                                 |
| `M-x customize`                     | Detailed descriptions of availalble functions                                                                                                                                                       |
| `M-x customize-apropos-options`     | Search entire space of customizable options by keyword (i.e. `indentation`)                                                                                                                         |
| `M-x customize-apropos-groups`      | Like `customize-apropos-options`, but for group names                                                                                                                                               |
| `C-s`                               | Start a text search. Press again to go to the next match. Use `C-r` for backwards matches. Exit with `RET` or `C-g` (returning to original position). Repeat last search with `C-s C-s`             |
| `C-r`                               | Start a text search, searching in reverse order                                                                                                                                                     |
| `M-y`                               | Yank text                                                                                                                                                                                           |
| `M-c`                               | Toggle case sensitivity in search                                                                                                                                                                   |
| `M-n` / `<-p`                       | Go through history of searches                                                                                                                                                                      |
| `C-x <a number>`                    | (i.e. `C-x 1`, `C-x 2`) Focus a specific window. Split a window horizontally with `C-x 2` and vertically with `C-x 3`. `C-x o` moves cursor to the next window in the cycle.                        |
| `C-u <a number> C-x o`              | Move forward (or backward, with a negative number) `n` windows, where `n` is the value of `C-u <n>`. Add `(windmove-default-keybindings)` to your `init.el` to cycle windows with `Shift+ArrowKey`. |
| `C-x 0`                             | Delete the current window                                                                                                                                                                           |
| `C-x 1`                             | Delete other windows                                                                                                                                                                                |
| `C-x 5 0`                           | Close the current frame                                                                                                                                                                             |
| `C-h e`                             | Open the echo area, where emacs displays messages                                                                                                                                                   |
| `M-x <function-name>`               | Execute a function                                                                                                                                                                                  |
| `M-d`                               | Delete a word from cursor to end of word (delete forward word)                                                                                                                                      |
| `C-y` + `M-y`                       | Cycle through recently killed/deleted text                                                                                                                                                          |
| `C-_` or `C-/`                      | Undo                                                                                                                                                                                                |
| `M-x list-packages`                 | Browse package repositories                                                                                                                                                                         |
| `M-x cua-mode`                      | Enable common clipboard actions (`C-c` for copy, `C-x` for cut, etc)                                                                                                                                |
| `C-x C-s`                           | Save a file                                                                                                                                                                                         |
| `C-x C-x`                           | Save as (write to new file)                                                                                                                                                                         |
| `C-x s`                             | Save all open files                                                                                                                                                                                 |
| `C-x C-f`                           | Open a file. Opens the `find-file` command, letting you type the path to a file. Hit `RET` to open it. If the file doesn't exist, it will be created                                                |
| `C-n`                               | Navigate to next logical line                                                                                                                                                                       |
| `C-p`                               | Navigate to previous logical line                                                                                                                                                                   |
| `C-f`                               | Move forward 1 character                                                                                                                                                                            |
| `C-b`                               | Move backwards 1 character                                                                                                                                                                          |
| `C-a`                               | Move to start of line                                                                                                                                                                               |
| `C-e`                               | Move to end of line                                                                                                                                                                                 |
| `M-f`                               | Move forward 1 whole word                                                                                                                                                                           |
| `M-b`                               | Move backward 1 whole word                                                                                                                                                                          |
| `M-a`                               | Move backward 1 whole sentence                                                                                                                                                                      |
| `M-e`                               | Move forward 1 whole sentence                                                                                                                                                                       |
| `C-downArrow`                       | Move down 1 whole paragraph                                                                                                                                                                         |
| `C-upArrow`                         | Move up 1 whole paragraph                                                                                                                                                                           |
| `C-v`                               | Scroll down 1 whole page                                                                                                                                                                            |
| `M-v`                               | Scroll up 1 whole page                                                                                                                                                                              |
| `C-M-v`                             | Scroll other window                                                                                                                                                                                 |
| `M-<`                               | Move to beginning of buffer                                                                                                                                                                         |
| `M->`                               | Move to end of buffer                                                                                                                                                                               |
| `C-u C-SPC`                         | Move back to originating position after moving around buffer                                                                                                                                        |
| `M-m`                               | Move past whitespace to first non-whitespace character. Useful for navigating indentation                                                                                                           |
| `C-x r SPC`                         | Store a point in the register                                                                                                                                                                       |
| `C-x r j`                           | Jump to a point stored in the register                                                                                                                                                              |
| `C-x r m`                           | Create new bookmark                                                                                                                                                                                 |
| `C-x r b`                           | Jump to a named bookmark                                                                                                                                                                            |
| `C-x r l`                           | List all bookmarks                                                                                                                                                                                  |
| `M-g g <number>`/`M-g M-g <number>` | Go-to line                                                                                                                                                                                          |
| `M-g M-n`                           | Go to next error                                                                                                                                                                                    |
| `M-g M-p`                           | Go to previous error                                                                                                                                                                                |
| `C-M-a`                             | Jump to beginning of function/class definition                                                                                                                                                      |
| `C-M-e`                             | Jump to end of function/class definition                                                                                                                                                            |
| `C-SPC`                             | Start marking text. This starts a text selection mode. Use `C-SPC` or `C-g` to stop marking                                                                                                         |
| `C-u C-SPC`                         | Jump to a mark                                                                                                                                                                                      |
| `C-x k`                             | Open kill buffer menu                                                                                                                                                                               |

## Fix common issues

These are the problem I run into most often.

### Fix Magit requires 'seq' warning

After installing `magit`, you may see an error like the one below. The instructions to fix it are writting in the warning, and documented beneath the warning text.

```shell
1 Emergency (magit): Magit requires ‘seq’ >= 2.24,
2 but due to bad defaults, Emacs’ package manager, refuses to
3 upgrade this and other built-in packages to higher releases
4 from GNU Elpa.
5
6 To fix this, you have to add this to your init file:
7
8   (setq package-install-upgrade-built-in t)
9
10 Then evaluate that expression by placing the cursor after it
11 and typing C-x C-e.
12
13 Once you have done that, you have to explicitly upgrade ‘seq’:
14
15   M-x package-install seq \‘RET’
16
17 Then you also must make sure the updated version is loaded,
18 by evaluating this form:
19
20   (progn (unload-feature 'seq t) (require 'seq))
21
22 If this does not work, then try uninstalling Magit and all of its
23 dependencies.  After that exit and restart Emacs, and only then
24 reinstalling Magit.
25
26 If you don’t use the ‘package’ package manager but still get
27 this warning, then your chosen package manager likely has a
28 similar defect.

```

To fix this, follow the instructions in the warning:

- Add `(setq package-install-upgrade-built-in t)` to your emacs configuration, i.e. in the [`magit.el` file](./distributions/emacs/config/packages/magit.el) or [`init.el`](./distributions/emacs/init.el).
- Open a "scratch" buffer and paste the following:
  - `(progn (unload-feature 'seq t) (require 'seq))`
- Put your cursor at the end of the line and run `C-x C-e` (`CTRL+x` then, still holding `CTRL`, `CTRL+e`)
- Then, upgrade the `seq` package by Running `M-x package-upgrade seq 'RET'`
  - This means to press `ALT+x`, type `package-upgrade` and hit `Return`/`Enter`
- Uninstall `magit` but running `M-x package-uninstall magit RET`
- Close and re-open emacs to re-install magit

You only need to do this once, the first time you clone the repository/add this config and install `magit`.

## Links

- [masteringemacs.org - Useful guides & examples for working with emacs](https://masteringemacs.org)
  - [masteringemacs.org - Beginners guide to Emacs](https://www.masteringemacs.org/article/beginners-guide-to-emacs)
  - [masteringemacs.org - Effective editing movement](https://www.masteringemacs.org/article/effective-editing-movement)
  - [masteringemacs.org - Fixing the mark commands in transient mark mode](https://www.masteringemacs.org/article/fixing-mark-commands-transient-mark-mode)
  - [masteringemacs.org - Keyboard macros are misunderstood](https://www.masteringemacs.org/article/keyboard-macros-are-misunderstood)
- Example emacs configurations
  - [Github.com purcell/emacs.d](https://github.com/purcell/emacs.d)
  - [Github.com bbatsov/prelude](https://github.com/bbatsov/prelude)
  - [Github.com SystemCrafters/crafted-emacs](https://github.com/SystemCrafters/crafted-emacs)
- [systemcrafters.net - emacs from scratch, basics of an emacs configuration](https://systemcrafters.net/emacs-from-scratch/basics-of-emacs-configuration/)
- [sophiebos.io - First emacs config](https://sophiebos.io/posts/first-emacs-config/)
- [Github.com conao3/leaf.el - Emacs package manager](https://github.com/conao3/leaf.el)
- [rindrics.com - emacs package management](https://rindrics.com/emacs/package-management/)
- [aweesome emacs](https://github.com/emacs-tw/awesome-emacs)
- [Github.com - evm: Emacs version manager](https://github.com/rejeep/evm)
