# Day 2 - Printing

{#solution_2_01}
### Exercise 2.01
> Print the string "Just a test"

```
echo "Just a test"
```

{#solution_2_02}
### Exercise 2.02
> Print a string without the trailing newline (check the manual page)

The man page says `-n     do not output the trailing newline`, so `echo -n Just a string`

{#solution_2_03}
### Exercise 2.03
> Print the string `"First line\nSecond line"` (mind the quotes). What happens? Can you find a way to convert that `\n` into a newline?

The man page says `-e     enable interpretation of backslash escapes`, so `echo -e "First line\nSecond line"`

