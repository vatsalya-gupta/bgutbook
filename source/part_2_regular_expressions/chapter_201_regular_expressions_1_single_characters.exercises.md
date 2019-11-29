{EXERCISE BEGIN 01}
Match "dog", "Dog", and "hog" into examples.txt
{EXERCISE SOLUTION 01}
``` sh
$ grep -E ".og" examples.txt
```
{EXERCISE END 01}

{EXERCISE BEGIN 02}
Log entries in the file `simple.log` contain the string `HTTP/<version> <code>`, where `<version>`` is the version of the HTTP protocol in use (either `1.0` or `1.1`) and `<code>`` is the three-digits HTTP request status code. Extract all lines with a status "4xx" (that is a status between 400 and 499). Count how often each status occurs.
{EXERCISE SOLUTION 02}
``` sh
$ grep -Eo "HTTP/.\.. 4.." simple.log  | sort | uniq -c
```
{EXERCISE END 02}
