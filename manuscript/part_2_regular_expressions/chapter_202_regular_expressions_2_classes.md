# Day 12 - Regular expressions - Classes

{blurb, icon: quote-right}
-- _I sat next to you in Mrs. Walsh's English class!_
Groundhog Day (1993)
{/blurb}

You were so amazed by the power of regular expressions that you decided to come back and proceed with your education! What did you say? I see, your boss forced you to learn regular expressions but your real dream is to be an action films star. You should consider taking some acting classes. Speaking of which, the topic of this lesson is classes in regular expressions, which are not evening courses, but collections of characters.

In the previous chapter we learned how to match a single specific character in a regular expression and how to match any single character. These two choices are very handy but often we need to match a set of character, for example the numbers 1, 2, or 3, or the letters between "a" and "f". Neither of the two syntaxes we discussed last time can provide this sort of match, so we need a new one.

In a regular expression, the syntax `[<characters>]` means "any single character in the list", and it is exactly what we need in this case. For example

``` sh
$ cat examples.txt | grep -E "[abc]"
```

matches a single "a", a single "b", or a single "c". Remember that `grep` highlights all matching elements in each line, and prints the whole line, use the `-o` option if you want to print the matching part only. The line "dog", for example, is excluded from the output as it doesn't contain any of the three letters in the class.

Classes are especially useful because they allow you to use ranges. For example

``` sh
$ cat examples.txt | grep -E "[a-z]"
```

matches all lowercase letters of the English alphabet. This will highlight whole words like "gorilla" and "aardvark", as they are composed of lowercase letters only. "Johnny 5", instead, is not completely highlighted, as the capital "J" and the number 5 are not matched by the regular expression. 

If you use regular expressions in an editor to search for strings (I let you discover how your favourite editor allows you to do this) the syntax `[a-z]` will match the first lowercase letter in the text. Repeating the search will find the second one, and so on.

Typical ranges are `a-z` for lowercase letters, `A-Z` for uppercase ones, and `0-9` for digits. You can use more than one range in a class, for example

``` sh
$ cat examples.txt | grep -E "[a-zA-Z]"
```

matches any letter, but not digits. Pay attention that a range like `A-z` (uppercase A and lowercase z) works but will match also other characters that are encoded between uppercase and lowercase letters, namely `[`, `\`, `]`, `^`, `_`, and ```. If your intention is that of including those characters you might want to explicitly add them to the class, as the `A-z` syntax might be easily overlooked. Be kind to whoever will have to debug your code, the Unix terminal is already more cryptic than ancient tomes of magic, don't make it worse.

Remember that a class, that is the whole block between square brackets, brackets included, is just an element of the regular expression, and can be followed or preceded by other elements. Exercises 2 and 3 will help you to see this in practice.

* * *


{#exercise_12_07}
#### Exercise 12.07
Match any line of examples.txt containing a digit

[Go to solution](#solution_12_07)

{#exercise_12_08}
#### Exercise 12.08
Match any line of examples.txt containing a lowercase "a" followed by any letter (that is "aa", "ab", "ac", and so on)

[Go to solution](#solution_12_08)

{#exercise_12_09}
#### Exercise 12.09
Match any line of examples.txt containing an upper case letter followed by a digit

[Go to solution](#solution_12_09)

{#exercise_12_10}
#### Exercise 12.10
Match any line of examples.txt containing a dash

[Go to solution](#solution_12_10)

{#exercise_12_11}
#### Exercise 12.11
Match any line of examples.txt containing a left square bracket "["

[Go to solution](#solution_12_11)


* * *

That's all about classes, as you can see the regular expressions syntax allows you to express rich patters in a short way, which is good! Now, use the time you saved thanks to the smart regular expressions! Have a chat with a friend, read a comic, lay in the sun if it is summer, build a snowman if it is winter. Class(es) dismissed!

Suggested film for the evening: Dead Poets Society (1989)