{EXERCISE BEGIN 01}
Using `grep` and `wc`, count how many times the file `examples.txt` contains the word `dog`
{EXERCISE SOLUTION 01}
``` sh
$ grep "dog" examples.txt | wc -l
```
{EXERCISE END 01}

{EXERCISE BEGIN 02}
Print all the lines of `examples.txt` that do not contain either a lowercase or an uppercase `h`
{EXERCISE SOLUTION 02}
``` sh
$ grep -vi "h" examples.txt 
```

The lesson doesn't tell you how to reverse-match the given string, so you need to read the man page for `grep`, which says

``` txt
       -v, --invert-match
              Invert the sense of matching, to select non-matching lines.
```

while the `-i` or `--ignore-case` option was already shown in the chapter.
{EXERCISE END 02}

{EXERCISE BEGIN 03}
Replace all letters `e` in the file `examples.txt` with a question mark `?`, then find among the resulting lines all the ones that have a space in them
{EXERCISE SOLUTION 03}
``` sh
$ cat examples.txt | sed s,"e","?",g | grep " "
```

There are no specific issues in using question mark and spaces, as long as you use quotes to surround the latter.
{EXERCISE END 03}
