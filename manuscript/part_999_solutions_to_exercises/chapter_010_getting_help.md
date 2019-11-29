# Day 1 - Getting help

## Solutions to exercises

{#solution_1_01}
### Exercise 1.01
Enter the man page for the `echo` command and locate the `AUTHOR` (actually the authors).

**Solution**
Run the command

``` sh
$ man echo
```

Inside the man page press `/` (slash) and type `AUTHOR`, then hit Enter. You should have found that `echo` has been written by Brian Fox and Chet Ramey TODO. Now silently say thanks to then for the time they spent creating these utilities. They did it for free, so you should be grateful.

[Go back to the exercise](#exercise_1_01)

{#solution_1_02}
### Exercise 1.02
Enter the man page for the `sort` command (we haven't used it yet, but the man page is there). Enter the online help and locate how to `Undo (toggle) search highlighting` with the search pattern command. Now exit the help, search for `ignore` and practise the search highlighting toggle command.

**Solution**
Run the command

``` sh
$ man sort
```

Inside the man page press `h` for the online help, then press `/` to search for a pattern, type `Undo` and press Enter. The first (and actually only) occurrence is

``` txt
ESC-u                Undo (toggle) search highlighting.
```

Now exit the help with `q`, hit `/`, type `ignore` and Enter. This highlights the occurrences. Now press ESC and then `u`. You don't need to keep ESC pressed, just hit ESC and then hit `u`, and the highlighting should disappear. Press `ESC-u` again and the highlighting should reappear. Now exit the help with `q`.

[Go back to the exercise](#exercise_1_02)

