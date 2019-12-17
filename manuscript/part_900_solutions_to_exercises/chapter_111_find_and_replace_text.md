# Day 11 - Find and replace text

## Solutions to exercises

{#solution_11_01}
#### Exercise 11.01
Using `grep` and `wc`, count how many times the file `examples.txt` contains the word `dog`

#### Solution
``` sh
$ grep "dog" examples.txt | wc -l
3
```

[Go back to the exercise](#exercise_11_01)

* * *

{#solution_11_02}
#### Exercise 11.02
Print all the lines of `examples.txt` that do not contain either a lowercase or an uppercase `h`

#### Solution
``` sh
$ grep -vi "h" examples.txt
dog
cat
dryad
dog
Police 101
aardvark
[...]
```

The lesson doesn't tell you how to reverse-match the given string, so you need to read the man page for `grep`, which says

``` txt
       -v, --invert-match
              Invert the sense of matching, to select non-matching lines.
```

while the `-i` or `--ignore-case` option was already shown in the chapter.

[Go back to the exercise](#exercise_11_02)

* * *

{#solution_11_03}
#### Exercise 11.03
Replace all letters `e` in the file `examples.txt` with a question mark `?`, then find among the resulting lines all the ones that have a space in them

#### Solution
``` sh
$ cat examples.txt | sed s,"e","?",g | grep " "
Dug th? Dog
Polic? 101
corn dog
phas? spid?r
und?ad r?d dragon
[...]
```

There are no specific issues in using question mark and spaces, as long as you use quotes to surround the latter.

[Go back to the exercise](#exercise_11_03)

* * *

