# Day 2 - Printing

{#solution_2_01}
### Exercise 2.01
Print the string "Just a test"

**Solution**
```sh
$ echo "Just a test"
```

[Go back to the exercise](#exercise_2_01)

{#solution_2_02}
### Exercise 2.02
Print a string without the trailing newline (check the manual page)

**Solution**
The man page says `-n     do not output the trailing newline`, so

``` sh
$ echo -n Just a string
```

[Go back to the exercise](#exercise_2_02)

{#solution_2_03}
### Exercise 2.03
Run

``` sh
$ echo "First line\nSecond line"
```

What happens? Can you find a way to convert that `\n` into a newline?

**Solution**
The man page says `-e     enable interpretation of backslash escapes`, so

``` sh
$ echo -e "First line\nSecond line"
```

[Go back to the exercise](#exercise_2_03)

# Day 4 - Beginnings and ends

{#solution_4_01}
### Exercise 4.01
Show the first 3 entries of `slices.txt`

**Solution**
``` sh
$ head -n3 slices.txt
```

[Go back to the exercise](#exercise_4_01)

{#solution_4_02}
### Exercise 4.02
Show the last 3 entries of `slices.txt`

**Solution**
``` sh
$ tail -n3 slices.txt
```

[Go back to the exercise](#exercise_4_02)

{#solution_4_03}
### Exercise 4.03
Show the content of `slices.txt` skipping the last 3 lines

**Solution**
``` sh
$ head -n -3 slices.txt
```

[Go back to the exercise](#exercise_4_03)

{#solution_4_04}
### Exercise 4.04
Show the content of `slices.txt` starting from line 3 (that is, skipping the first 2 lines)

**Solution**
``` sh
$ tail -n +3 slices.txt
```

[Go back to the exercise](#exercise_4_04)

