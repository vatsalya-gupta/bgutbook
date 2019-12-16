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

The idea behind this solution it to find all the lines that contain `GET` or `POST` using the logical OR in a group, so that either can be surrounded by spaces, which helps avoiding other mentions of those letters (like for example a line with an URL that contains "BUDGET" or "POSTER"). Then I decompose the rest of the line using the year (`[0-9]{4}:`) as an anchor. The HTTP protocol can be either `HTTP/1.0` or `HTTP/1.1`, and the HTTP status is always a three digits number (`[0-9]{3}`).

[Go back to the exercise](#exercise_15_01)

* * *

{#solution_15_02}
#### Exercise 15.02
The file `simple.log` contains lines with requests concerning files like

``` txt
83.149.9.216 [17/May/2015:10:05:03 GET /presentations/logstash-monitorama-2013/images/kibana-search.png HTTP/1.1 200 203023 http://semicomplete.com/presentations/logstash-monitorama-2013/
```

Extract a list of all file extensions and count them. Assume that extensions are made of lowercase letters only.

#### Solution
There are many ways to solve this exercise. One possible solution is to use lookaround expressions with `grep` to isolate the file path and later the file extension.

``` sh
$ cat simple.log | grep -Po "(?<=GET )\/.*(?= HTTP)" | grep -Po "(?<=\.)[a-z]+$" | sort | uniq -c
      4 access
     10 c
     14 conf
      1 cpp
   1458 css
      4 deb
[...]
```

[Go back to the exercise](#exercise_15_02)

* * *

{#solution_15_03}
#### Exercise 15.03
There are three lines in the file `simple.log` where a request received an HTTP 500 status code, for example

``` txt
66.249.73.135 [18/May/2015:15:05:42 GET /misc/Title.php.txt HTTP/1.1 500 - -
```

Find them and print the IP addresses of each client in a single comma-separated line (i.e. `<IP number 1>,<IP number 2>,<IP number 3>`)

#### Solution
The exercise can be solved using `grep`, sed` and `xargs`

``` sh
$ grep -E "HTTP/1.1 500" simple.log | sed -r s,"([0-9.]+) .*","\1", | xargs echo | sed s/" "/","/g
66.249.73.135,66.249.73.135,64.131.102.243
```

The initial `grep` uses the `HTTP\1.1 500` mentioned in the text of the exercise to find the relevant lines. Then, using sed we can extract the IP addresses, put them on a single line with `xargs` and replacing the space used as a separator with a comma.

Instead of `sed` we could have used `grep`
``` sh
$ grep -E "HTTP/1.1 500" simple.log | grep -Eo  "^[0-9.]+" | xargs echo | sed s/" "/","/g
66.249.73.135,66.249.73.135,64.131.102.243
```

counting on the fact that the space following the IP address is not matched by the class. A common replacement for the `xargs | sed` pattern is the `paste` command (that wasn't introduced in the book)

``` sh
$ grep -E "HTTP/1.1 500" simple.log | grep -Eo  "^[0-9.]+" | paste -s -d,
66.249.73.135,66.249.73.135,64.131.102.243
```

Make sure you read the man page of the `paste` command, it's pretty simple and useful to have in your toolkit.

[Go back to the exercise](#exercise_15_03)

* * *

