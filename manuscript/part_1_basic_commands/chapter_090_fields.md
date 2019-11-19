# Day 9 - Fields

{icon: quote-right}
B> _In the plus column, though she makes a hell of a cup of coffee._
B> - Batman Returns (1992)

Data is often structured, and many times a good way to split data is to use fields separated by a specific character. This is true for Comma-Separated Values files (CSV), but it is also true for other types of data. For example, the words in a sentence are separated by spaces, the numbers in an IP address are separated by dots (`192.168.0.1`), and hours, minutes, and seconds in a time string can be separated by colons (`08:41:12`).

It is thus definitely useful to learn how to pick a specific field or set of fields from a string, and the best way to do it in Unix is to use the command `cut`. This command has two important options: `-d` specifies the character used to split the fields, and `-f` specifies the fields themselves, counting from 1. Let's consider an example

``` sh
echo "12:34:56" | cut -d ":" -f 2
```

This splits the string `12:34:56` into three fields, namely `12`, `34`, and `56`, as the separator given to the command is the colon character, and then picks field number 2, which corresponds to minutes. Using command substitution we might then assign this to a variable

``` sh
minutes=$(echo "12:34:56" | cut -d ":" -f 2)
```

The `-d` option accepts a single character as a delimiter, and the default value is `TAB` as in the special character for tabulation, being that a common way to space fields. As you can see I wrapped the colon in quotes, which are not strictly necessary, but they become so when we want to use a space

``` sh
echo "This is a sentence with many words" | cut -d " " -f 4
```

My advice is to just always use the quotes, it is useless to waste time thinking if you need them or not. As we said, the field option accepts the number of a field, but it can also parse sequences  like `4-7`, lists like `4,7`, and combinations of the two. Read the manual page to discover all the supported formats.

Time for some exercises! At this point we have a pretty good amount of tools in our belt, so we can start performing useful tasks. Let's consider the logs.txt file, which represents the part of the logs of a web server.

E09.01 Print fields 1,6,7, and 8 of the file `logs.txt`

E09.02 Extract the time of each request as HH:MM:SS






