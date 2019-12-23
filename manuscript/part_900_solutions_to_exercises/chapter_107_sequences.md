# Day 7 - Sequences and counting

## Solutions to exercises

{#solution_7_01}
#### Exercise 7.01
Print the numbers from 5 to 15 padded with enough zeros to fill 5 digits, i.e. `00005`, `00006`, `00007`, and so on.

#### Solution
``` sh
$ seq -w 5 10000 | head -n 11
00005
00006
00007
00008
00009
00010
00011
00012
00013
00014
00015
```

[Go back to the exercise](#exercise_7_01)

* * *

{#solution_7_02}
#### Exercise 7.02
Count the number of lines of the file simple.log

#### Solution
``` sh
$ cat simple.log | wc -l
10000
```

[Go back to the exercise](#exercise_7_02)

* * *

