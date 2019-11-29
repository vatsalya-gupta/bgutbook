# Day 13 - Regular expressions - Anchors

{blurb, icon: quote-right}
-- 

{/blurb}

This is day 3 of your journey into regular expressions, are you ready for some more magic? Today we will learn how to use anchors. No, we are not setting boats on fire, what did you understand? We are going to discover how to tell a regular expression where the text is and how to manage repetitions.

Let's start with anchors. You might like to know TODO that the HTML tag `<a>` commonly used to include hypertext links, comes from anchor, as it was a way to anchor an element to a specific place in the markup. Old times, now things are completely different. Anyway, this has nothing to do with regular expressions, TODO but for the fact that we generally have the need of specifying where some text has to be found.

Before we dive into positioning, however, I want to discuss text that spans multiple lines. Generally speaking, the separation of a text into lines is a pure convention. We agree (at least in Unix operating systems) that the character `\n` (TODO hexadecimal) is a new line and a carriage return, that is one line below at the leftmost position. This is a convention, as it is a convention to say that the hexadecimal value 20 is a space in the standard encodings that we use (ASCII or UTF-8), but has a particular significance TODO. Text on a new line is usually considered separated form the previous one, or at least identifying a different entry. For example, when we list people in a group, we generally put two different people of two different lines, or it could be difficult to understand how many of them are there.

So, Unix tools generally work line by line, as we already noticed with `grep`. This is not different with regular expressions, as they are applied by tools that read and process a text line by line. There are ways to apply a regular expressions to a multiline text, but I leave this for a future lesson.

Let's go back to anchors. When we want to find a string in a longer text, the two more frequent cases we will encounter are when the string is at the beginning of the line and when the string is at the end of it. The syntax of regular expressions provides two special characters to signal this, aptly named _anchors_, which are `^` (TODO _caret_, or _hat_) and `$` (_dollar_). Please not that the `$` used by some shells as prompt (and used in the examples of this book) is not related the the `$` anchor at all.

I think you remember the first regular expression that we learned

``` sh
$ grep -E "dog" examples.txt
dog
dog
corn dog
```

which returns all lines with the string `dog` somewhere in them. If you run

``` sh
$ cat examples.txt | grep -E "^dog"
dog
dog
```

you will notice that the last line is not there, because the `^` anchors the string `dog` to TODO the beginning of the line. Conversely, if you run

``` sh
$ cat examples.txt | grep -E "dog$"
dog
dog
corn dog
```

you will get the same result of the first run, as all those `dog` strings are at the end of the line.

You can also combine the two in a single regular expression if you need to anchor something at the beginning and something else at the end

``` sh
$ cat examples.txt | grep -E "^co.*og$"
corn dog
```

From the last example, it follows that if you want to match the exact content of a line you just need to surround the search pattern with anchors

``` sh
$ cat examples.txt | grep -E "^hog$"
hog
```

If you try the last example without either the `^` or the `$` you will see that the result changes as the pattern matches only part of the line.

* * *


{#exercise_13_01}
#### Exercise 13.01
Match every line of examples.txt that ends with an upper case letter and a number (in this order)

[Go to solution](#solution_13_01)

{#exercise_13_02}
#### Exercise 13.02
Match every empty line in examples.txt

[Go to solution](#solution_13_02)


* * *

