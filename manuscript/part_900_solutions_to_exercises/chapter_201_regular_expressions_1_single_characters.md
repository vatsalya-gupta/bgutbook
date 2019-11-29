# Day 11 - Regular expressions - Single characters

## Solutions to exercises

{#solution_11_01}
#### Exercise 11.01
Match "dog", "Dog", and "hog" into examples.txt

#### Solution
``` sh
$ grep -E ".og" examples.txt
```

[Go back to the exercise](#exercise_11_01)

* * *

{#solution_11_02}
#### Exercise 11.02
Log entries in the file `simple.log` contain the string `HTTP/<version> <code>`, where `<version>`` is the version of the HTTP protocol in use (either `1.0` or `1.1`) and `<code>`` is the three-digits HTTP request status code. Extract all lines with a status "4xx" (that is a status between 400 and 499). Count how often each status occurs.

#### Solution
``` sh
$ grep -Eo "HTTP/.\.. 4.." simple.log  | sort | uniq -c
```

[Go back to the exercise](#exercise_11_02)

* * *

