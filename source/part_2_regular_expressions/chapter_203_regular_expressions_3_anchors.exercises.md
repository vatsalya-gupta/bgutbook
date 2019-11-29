{EXERCISE BEGIN 01}
Match every line of examples.txt that ends with an upper case letter and a number (in this order)
{EXERCISE SOLUTION 01}
``` sh
$ cat examples.txt | grep "[A-Z][0-9]$"
```
{EXERCISE END 01}

{EXERCISE BEGIN 02}
Match every empty line in examples.txt
{EXERCISE SOLUTION 02}
``` sh
$ cat examples.txt | grep "^$"
```
{EXERCISE END 02}
