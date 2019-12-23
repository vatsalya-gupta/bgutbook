# Day 15 - Regular expressions - Anchors

## Solutions to exercises

{#solution_15_01}
#### Exercise 15.01
Match every line of examples.txt that ends with an upper case letter and a number (in this order)

#### Solution
``` sh
$ cat examples.txt | grep "[A-Z][0-9]$"
R2-D2
```

[Go back to the exercise](#exercise_15_01)

* * *

{#solution_15_02}
#### Exercise 15.02
Count how many empty lines are contained in the file examples.txt

#### Solution
``` sh
$ cat examples.txt | grep "^$" | wc -l
1
```

[Go back to the exercise](#exercise_15_02)

* * *

