{EXERCISE BEGIN 01}
Match every line of examples.txt that ends with an upper case letter and a number (in this order)
{EXERCISE SOLUTION 01}
``` sh
$ cat examples.txt | grep "[A-Z][0-9]$"
R2-D2
```
{EXERCISE END 01}

{EXERCISE BEGIN 02}
Count how many empty lines are contained in the file examples.txt
{EXERCISE SOLUTION 02}
``` sh
$ cat examples.txt | grep "^$" | wc -l
1
```
{EXERCISE END 02}
