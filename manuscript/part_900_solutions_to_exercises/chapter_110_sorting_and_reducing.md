# Day 10 - Sorting and reducing

## Solutions to exercises

{#solution_10_01}
#### Exercise 10.01
Print the 5 more frequent IP addresses in the simple log file TODO

#### Solution
``` sh
$ cut -d " " -f 1 simple.log | sort | uniq -c | sort -nr | head -n 5
    482 66.249.73.135
    364 46.105.14.53
    357 130.237.218.86
    273 75.97.9.59
    113 50.16.19.13
```

[Go back to the exercise](#exercise_10_01)

* * *

{#solution_10_02}
#### Exercise 10.02
Print the HTTP methods used by the requests in the simple log file TODO and count how many occurrences are there for each one.

#### Solution
``` sh
$ cut -d " " -f 3 simple.log | sort | uniq -c
   9952 GET
     42 HEAD
      1 OPTIONS
      5 POST
```

[Go back to the exercise](#exercise_10_02)

* * *

