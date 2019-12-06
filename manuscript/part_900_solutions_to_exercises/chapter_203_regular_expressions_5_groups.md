# Day 15 - Regular expressions - Groups

## Solutions to exercises

{#solution_15_01}
#### Exercise 15.01
Extract all the lines of `simple.log` that contain an HTTP method `GET` or `POST`, rewrite each line in the form `<time> <HTTP status> <HTTP method>`. The result for the first 10 lines should be

``` txt
10:05:03 200 GET
10:05:43 200 GET
10:05:47 200 GET
10:05:12 200 GET
10:05:07 200 GET
10:05:34 200 GET
10:05:57 200 GET
10:05:50 200 GET
10:05:24 200 GET
10:05:50 200 GET
```

#### Solution
``` sh
$ head simple.log | grep -E " (GET|POST) " | sed -r s,".*[0-9]{4}:(.*) (GET|POST).*HTTP/1.[01] ([0-9]{3}).*","\1 \3 \2",
```

[Go back to the exercise](#exercise_15_01)

* * *

