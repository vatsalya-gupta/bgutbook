{EXERCISE BEGIN 07}
Match any line of examples.txt containing a digit
{EXERCISE SOLUTION 07}
``` sh
cat examples.txt | grep "[0-9]"
```
{EXERCISE END 07}

{EXERCISE BEGIN 08}
Match any line of examples.txt containing a lowercase "a" followed by any letter (that is "aa", "ab", "ac", and so on)
{EXERCISE SOLUTION 08}
``` sh
cat examples.txt | grep "a[a-z]"
```
{EXERCISE END 08}

{EXERCISE BEGIN 09}
Match any line of examples.txt containing an upper case letter followed by a digit
{EXERCISE SOLUTION 09}
``` sh
cat examples.txt | grep "[A-Z][0-9]"
```
{EXERCISE END 09}

{EXERCISE BEGIN 10}
Match any line of examples.txt containing a dash
{EXERCISE SOLUTION 10}
``` sh
cat examples.txt | grep -E "[-]"
```
{EXERCISE END 10}

{EXERCISE BEGIN 11}
Match any line of examples.txt containing a left square bracket "["
{EXERCISE SOLUTION 11}
``` sh
cat examples.txt | grep -E "[[]"
```
{EXERCISE END 11}
