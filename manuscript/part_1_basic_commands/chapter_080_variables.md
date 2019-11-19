# Day 8 - Variables

{icon: quote-right}
B> _You're not part ofthis equation._ -- Die Hard (1988)

The Unix terminal provides variables, like many programming languages. Unfortunately, unlike other programming languages, bash does not provide data types, and this is a very important thing to remember. In bash, all variables are untyped, or, if you prefer, are just strings.

The assignment operator is `=`, so if you run

``` sh
x=pdf
```

the variable `x` assumes the value `pdf` as a string. As happened with `echo` you _can_ use quotes, which are usually a good way to signal that we are dealing with a string, therefore you _should_. Remember they are not strictly necessary, though, as you can find many scripts that do not use them.

``` sh
x="pdf"
```

You cannot, instead, use spaces, as the line `x = "pdf"` would be interpreted as the execution of the command `x` with two parameters `=` and `"pdf"`. Weird, isn't it? It is, but this is due to the double nature of the terminal. It's a command-line interface to the operating system, but it's also a programming language, so the two aspects sometimes clash.

As I said, variables are always strings, so

``` sh
x=5
```

is not assigning the integer value 5 to `x`, but the string `"5"`. This has some implications, but the most important for the time being is that mathematical operators are slightly convoluted in bash. We will discuss this later, however, so you don't need to worry now. Just remember that if you type `x=5+1` you are assigning x the value of the string `"5+1"`. Facepalm moment for you, the first time you will write this in one of your scripts.

To refer to a variable, that is, to use its value, we use the syntax `${variable}`. For example

``` sh
x=5; echo ${x}
```

prints `5` on the terminal. You will often see people using a shorthand version of this syntax, which avoids the the curly braces. That means that `$x` is most of the time the same as `${x}`. My advice is to get used to the full syntax now and never use the short one, as it can be confusing if underscores are involved. I will dive into this is a later lesson, so for now do yourself and your fellow programmers a favour and forget about the short notation. It's just a pair of curly braces, after all, and using them makes the code clearer.

You can use variables anywhere in bash, as they are replaced before commands get executed. For example

``` sh
x=5; sed -n ${x}p slices.txt
```

Arguably not the easiest syntax to read, but it is you who signed TODO for the "Ancient spells and mystical rituals" course, after all. Wait a minute, what do you mean you just wanted to be a programmer? Where is the difference?

After variables, command substitution is one of the features you will use the most if you get into bash scripting. Command substitution simply means that you assign to a variable the full output of a command, and this is used often because it allows you to manipulate that output, to loop over its parts, and in general to use it creatively.

Command substitution is expressed by the syntax `$(command)`, where `command` is any line that you could execute on the terminal. For example we might assign the output of a sequence to a variable

``` sh
x=$(seq 1 5); echo ${x}
```

Please note that in this case the variable `x` gets the value of the string `"1 2 3 4 5"`. It is not a list, or any other complex data type, just a simple string made of digits and spaces. Bash automatically converted the newline characters used by `seq` into spaces, and this will come in very handy when we will learn loops.

Cool, now enjoy the rest of the day, we will soon learn how to transform a pumpkin into a coach, and mice into pageants TODO, just remember that at midnight everything goes back to text files.

