# Day 12 - Regular expressions - Classes

## Solutions to exercises

{#solution_12_07}
#### Exercise 12.07
Match any line of examples.txt containing a digit

#### Solution
``` sh
cat examples.txt | grep "[0-9]"
```

[Go back to the exercise](#exercise_12_07)

* * *

{#solution_12_08}
#### Exercise 12.08
Match any line of examples.txt containing a lowercase "a" followed by any letter (that is "aa", "ab", "ac", and so on)

#### Solution
``` sh
cat examples.txt | grep "a[a-z]"
```

[Go back to the exercise](#exercise_12_08)

* * *

{#solution_12_09}
#### Exercise 12.09
Match any line of examples.txt containing an upper case letter followed by a digit

#### Solution
``` sh
cat examples.txt | grep "[A-Z][0-9]"
```

[Go back to the exercise](#exercise_12_09)

* * *

{#solution_12_10}
#### Exercise 12.10
Match any line of examples.txt containing a dash

#### Solution
``` sh
cat examples.txt | grep -E "[-]"
```

[Go back to the exercise](#exercise_12_10)

* * *

{#solution_12_11}
#### Exercise 12.11
Match any line of examples.txt containing a left square bracket "["

#### Solution
``` sh
cat examples.txt | grep -E "[[]"
```

[Go back to the exercise](#exercise_12_11)

* * *

