# Day 13 - Regular expressions - Anchors and multiple matches

## Solutions to exercises

{#solution_13_01}
### Exercise 13.01
Match every line of examples.txt that ends with an upper case letter and a number (in this order)

**Solution**
``` sh
$ cat examples.txt | grep "[A-Z][0-9]$"
```

[Go back to the exercise](#exercise_13_01)

{#solution_13_02}
### Exercise 13.02
Match every empty line in examples.txt

**Solution**
``` sh
$ cat examples.txt | grep "^$"
```

[Go back to the exercise](#exercise_13_02)

