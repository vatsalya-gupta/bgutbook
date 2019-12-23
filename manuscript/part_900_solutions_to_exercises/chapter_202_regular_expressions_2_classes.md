# Day 14 - Regular expressions - Classes

## Solutions to exercises

{#solution_14_07}
#### Exercise 14.07
Match any line of examples.txt containing a digit

#### Solution
``` sh
$ cat examples.txt | grep "[0-9]"
Police 101
H2O
007
R2-D2
Johnny 5
Cyborg 009
HTTP/1.1
C-3PO
```

[Go back to the exercise](#exercise_14_07)

* * *

{#solution_14_08}
#### Exercise 14.08
Match any line of examples.txt containing a lowercase "a" followed by any letter (that is "aa", "ab", "ac", and so on)

#### Solution
``` sh
$ cat examples.txt | grep "a[a-z]"
cat
elephant
dryad
aardvark
phase spider
manticore
undead red dragon
Spider-Man [*]
cat
basilisk
hogwash
cat
Big Bad Wolf
```

[Go back to the exercise](#exercise_14_08)

* * *

{#solution_14_09}
#### Exercise 14.09
Match any line of examples.txt containing an upper case letter followed by a digit

#### Solution
``` sh
$ cat examples.txt | grep "[A-Z][0-9]"
H2O
R2-D2
```

[Go back to the exercise](#exercise_14_09)

* * *

{#solution_14_10}
#### Exercise 14.10
Match any line of examples.txt containing a dash

#### Solution
``` sh
$ cat examples.txt | grep -E "[-]"
R2-D2
Spider-Man [*]
C-3PO
```

[Go back to the exercise](#exercise_14_10)

* * *

{#solution_14_11}
#### Exercise 14.11
Match any line of examples.txt containing a left square bracket "["

#### Solution
``` sh
$ cat examples.txt | grep -E "[[]"
Spider-Man [*]
```

[Go back to the exercise](#exercise_14_11)

* * *

