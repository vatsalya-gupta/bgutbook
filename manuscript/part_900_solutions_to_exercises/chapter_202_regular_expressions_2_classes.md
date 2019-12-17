# Day 12 - Regular expressions - Classes

## Solutions to exercises

{#solution_12_07}
#### Exercise 12.07
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

[Go back to the exercise](#exercise_12_07)

* * *

{#solution_12_08}
#### Exercise 12.08
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

[Go back to the exercise](#exercise_12_08)

* * *

{#solution_12_09}
#### Exercise 12.09
Match any line of examples.txt containing an upper case letter followed by a digit

#### Solution
``` sh
$ cat examples.txt | grep "[A-Z][0-9]"
H2O
R2-D2
```

[Go back to the exercise](#exercise_12_09)

* * *

{#solution_12_10}
#### Exercise 12.10
Match any line of examples.txt containing a dash

#### Solution
``` sh
$ cat examples.txt | grep -E "[-]"
R2-D2
Spider-Man [*]
C-3PO
```

[Go back to the exercise](#exercise_12_10)

* * *

{#solution_12_11}
#### Exercise 12.11
Match any line of examples.txt containing a left square bracket "["

#### Solution
``` sh
$ cat examples.txt | grep -E "[[]"
Spider-Man [*]
```

[Go back to the exercise](#exercise_12_11)

* * *

