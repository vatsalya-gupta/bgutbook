{EXERCISE BEGIN 01}
Match "dog", "Dog", and "hog" into examples.txt
{EXERCISE SOLUTION 01}
``` sh
$ grep -E ".og" examples.txt
dog
Dug the Dog
dog
corn dog
hogwash
wild hog
hog
```
{EXERCISE END 01}

{EXERCISE BEGIN 02}
Log entries in the file `simple.log` contain the string `HTTP/<version> <code>`, where `<version>`` is the version of the HTTP protocol in use (either `1.0` or `1.1`) and `<code>`` is the three-digits HTTP request status code. Extract all lines with a status "4xx" (that is a status between 400 and 499). Count how often each status occurs.
{EXERCISE SOLUTION 02}
The `HTTP/1.0` or `HTTP/1.1` strings can be used as anchors to identify the three digits we are interested in, but then we want to get rid of them to aggregate the HTTP status codes only

``` sh
$ grep -Eo "HTTP/.\.. 4.." simple.log  | sed -r s,"HTTP/.\.. ",, | sort | uniq -c
      2 403
    213 404
      2 416
```

If we don't get rid of the protocol version we get a different histogram, which can be interesting anyway

``` sh
$ grep -Eo "HTTP/.\.. 4.." simple.log  | sort | uniq -c
      1 HTTP/1.0 403
     30 HTTP/1.0 404
      1 HTTP/1.1 403
    183 HTTP/1.1 404
      2 HTTP/1.1 416
```
{EXERCISE END 02}
