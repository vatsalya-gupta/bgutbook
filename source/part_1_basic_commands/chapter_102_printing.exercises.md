{EXERCISE BEGIN 01}
Print the string "Just a test"
{EXERCISE SOLUTION 01}
``` sh
$ echo "Just a test"
Just a test
```

As we discussed in the chapter this can also be solved running

``` sh
$ echo Just a test
Just a test
```

but I believe the first solution is better. It is immediately clear which part of the command is the string and later, when we will create scripts in an editor, strings between quotes are highlighted.

{EXERCISE END 01}

{EXERCISE BEGIN 02}
Print a string without the trailing newline (check the manual page)
{EXERCISE SOLUTION 02}
Open the man page for `echo` and search for the pattern `trailing newline`. You should find that

``` txt
-n     do not output the trailing newline
```

So, if you run

``` sh
$ echo -n "Just a string"
Just a string$
```

You should get the string immediately followed by the prompt, as you can see above. This is useful when you want to give the user some feedback on a running process like a for loop, and you want to print a single character like for example a dot. Inside the loop you want to print those characters without the newline to keep then on the same output line.
{EXERCISE END 02}

{EXERCISE BEGIN 03}
Run

``` sh
$ echo "First line\nSecond line"
```

What happens? Can you find a way to convert that `\n` into a newline?
{EXERCISE SOLUTION 03}
When you run the given command you get as an output the literal string `First line\nSecond line`. The `\n` sequence is used in Unix systems to indicate a newline, and apparently `echo` doesn't understand it out of the box. This is because, by default `echo` ignores _backslash escapes_ like `\n`. In the programming world, an _escape_ is a way to avoid the default interpretation of some character and to signal the language that we give it a special meaning. In this case, if echo encounters an `n`, it would just print out the character `n`, while we want to use it in a special way.

Long story short, if you search for `backslash` in the man page of `echo`, you will find

``` txt
The man page says `-e     enable interpretation of backslash escapes`, so
```

which means that if you run

``` sh
$ echo -e "First line\nSecond line"
First line
Second line
```

you will get the desired result.
{EXERCISE END 03}
