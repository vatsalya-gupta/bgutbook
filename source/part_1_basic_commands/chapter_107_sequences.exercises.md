{EXERCISE BEGIN 01}
Print the numbers from 5 to 15 padded with enough zeros to fill 5 digits, i.e. `00005`, `00006`, `00007`, and so on.
{EXERCISE SOLUTION 01}
``` sh
$ seq -w 5 10000 | head -n 11
00005
00006
00007
00008
00009
00010
00011
00012
00013
00014
00015
```
{EXERCISE END 01}

{EXERCISE BEGIN 02}
Count the number of lines of the file simple.log
{EXERCISE SOLUTION 02}
``` sh
$ cat simple.log | wc -l
10000
```
{EXERCISE END 02}
