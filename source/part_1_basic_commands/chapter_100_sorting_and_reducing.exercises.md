{EXERCISE BEGIN 01}
Print the 5 more frequent IP addresses in the simple log file TODO
{EXERCISE SOLUTION 01}
``` sh
$ cut -d " " -f 1 simple.log | sort | uniq -c | sort -nr | head -n 5
```
{EXERCISE END 01}

{EXERCISE BEGIN 02}
Print the HTTP methods used by the requests in the simple log file TODO and count how many occurrences are there for each one.
{EXERCISE SOLUTION 02}
``` sh
$ cut -d " " -f 3 simple.log | sort | uniq -c
```
{EXERCISE END 02}
