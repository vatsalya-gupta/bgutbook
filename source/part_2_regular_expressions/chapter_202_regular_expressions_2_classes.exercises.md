{EXERCISE BEGIN 07}
Match any line of examples.txt containing a digit
{EXERCISE SOLUTION 07}
``` sh
$ cat examples.txt | grep "[0-9]"
Police 101
H2O
007
R2-D2
Johnny 5
Cyborg 009
HTTP/1.1
C-3PO
```
{EXERCISE END 07}

{EXERCISE BEGIN 08}
Match any line of examples.txt containing a lowercase "a" followed by any letter (that is "aa", "ab", "ac", and so on)
{EXERCISE SOLUTION 08}
``` sh
$ cat examples.txt | grep "a[a-z]"
cat
elephant
dryad
aardvark
phase spider
manticore
undead red dragon
Spider-Man [*]
cat
basilisk
hogwash
cat
Big Bad Wolf
```
{EXERCISE END 08}

{EXERCISE BEGIN 09}
Match any line of examples.txt containing an upper case letter followed by a digit
{EXERCISE SOLUTION 09}
``` sh
$ cat examples.txt | grep "[A-Z][0-9]"
H2O
R2-D2
```
{EXERCISE END 09}

{EXERCISE BEGIN 10}
Match any line of examples.txt containing a dash
{EXERCISE SOLUTION 10}
``` sh
$ cat examples.txt | grep -E "[-]"
R2-D2
Spider-Man [*]
C-3PO
```
{EXERCISE END 10}

{EXERCISE BEGIN 11}
Match any line of examples.txt containing a left square bracket "["
{EXERCISE SOLUTION 11}
``` sh
$ cat examples.txt | grep -E "[[]"
Spider-Man [*]
```
{EXERCISE END 11}
