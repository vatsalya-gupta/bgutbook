# Day 9 - Fields

Data is often structured, and many times a good way to split data is to use fields separated by a specific character. This is true for Comma-Separated Values files (CSV), but it is also true for other types of data. For example, the words in a sentence are separated by spaces, the numbers in an IP address are separated by dots, and hours, minutes, and seconds in a time string can be separated by colons.

It is thus definitely useful to learn how to pick a specific field or set of fields from a string, and the best way to do it in Unix is to use the command `cut`. This command has two switches: `-d` specifies the character used to split the fields, and `-f` specifies the fields themselves, counting from 1. Let's consider an example

``` sh
echo "12:34:56" | cut -d ":" -f 2
```

This splits the string `"12:34:56"` into three fields, namely `12`, `34`, and `56`, as the separator given to the command is the colon character, and then picks field number 2, which corresponds to minutes. Using command substitution we might then assign this to a variable

``` sh
minutes=$(echo "12:34:56" | cut -d ":" -f 2)
```

The `-d` option accepts a single character as a delimiter, and the default value is `TAB` as in the special character for tabulation, being that a common way to space fields. As you can see I wrapped the colon in quotes, which is not strictly necessary, but it becomes so when we want to use a space

``` sh
echo "This is a sentence with many words" | cut -d " " -f 4
```

My advice is to just always use the quotes, it is useless to waste time thinking is you need them or not. As we said, the field option accepts the number of a field, but it can also parse sequences like `4-7`, lists like `4,7`, and combinations of the two.

E09.01 Print fields 1 and TODO of the file `logs.txt`
TODO

