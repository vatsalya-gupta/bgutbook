# Day 9 - Fields

## Solutions to exercises

{#solution_9_01}
#### Exercise 9.01
Print fields 1,6,7, and 8 of the file `simple.log`

#### Solution
You can either use `cut` directly

``` sh
$ cut simple.log -d " " -f 1,6-8
```

or use `cat` and a pipe

``` sh
cat simple.log | cut -d " " -f 1,6-8
```

[Go back to the exercise](#exercise_9_01)

* * *

{#solution_9_02}
#### Exercise 9.02
Extract the time of each request as HH:MM:SS

#### Solution
There are several ways to achieve this result. Two possible ones are

``` sh
$ cat simple.log | cut -d ":" -f 2-4 | cut -d " " -f 1
```

and

``` sh
$ cat simple.log | cut -d " " -f 2 | cut -d ":" -f 2-
```

In the first one I first cut using the colon and then we remove the part separated by a space, while in the second one I do the opposite, first selecting the second column separated by spaces and then removing the first part separated by colon.

[Go back to the exercise](#exercise_9_02)

* * *

