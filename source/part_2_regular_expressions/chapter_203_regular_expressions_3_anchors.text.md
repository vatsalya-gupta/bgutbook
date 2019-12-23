# Day 15 - Regular expressions - Anchors

{blurb, icon: quote-right}
-- _Okay, here. Stop. Throw anchor._
The Karate Kid (1984)
{/blurb}

This is day 3 of your journey into regular expressions, are you ready for some more magic? Today we will learn how to use anchors. No, we are not setting boats on fire, what did you understand? We are going to discover how to tell a regular expression where the text is and how to manage repetitions.

Let's start with anchors. You might like to know that the HTML tag `<a>` commonly used to include hypertext links, comes from anchor, as it was a way to anchor an element to a specific place in the markup. Old times, now things are pretty different. Anyway, this has nothing to do with regular expressions but for the fact that we generally have the need of specifying where some text has to be found.

Before we dive into positioning, however, I want to discuss text that spans multiple lines. Generally speaking, the separation of a text into lines is a pure convention. We agree that the characters `\n`represent a new line, and this convention comes from the C language that wanted to ensure maximum portability of the code, as the ASCII hexadecimal value `0x0a` might not be recognised by some systems.

Text on a new line is usually considered separated from the previous one, or at least identifying a different entry in a list. For example, when we make a list of people in a group, we generally put two different people of two different lines, which avoid any possible misunderstanding between names, middle names, and surnames.

So, Unix tools generally work line by line, as we already noticed with `grep`. This is not different when we use regular expressions, as they are applied by tools that read and process a text line by line. There are ways to apply a regular expressions to a multiline text, but I leave this for a future lesson.

Let's go back to anchors. When we want to find a string in a longer text, the two more frequent cases we will encounter are when the string is at the beginning of the line and when the string is at the end of it. The syntax of regular expressions provides two special characters to signal this, aptly named _anchors_, which are `^` (_caret_, or _hat_) and `$` (_dollar_). Please not that the `$` used by some shells as prompt (and used in the examples of this book) is not related the the `$` anchor at all.

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

you will notice that the last line is not there, because the `^` anchors the string `dog` to the beginning of the line. Conversely, if you run

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

## Exercises

{EXERCISES 15}

* * *

Anchoring text is very important as many times the pattern we are looking for is repeated in other parts of the line, but those are not interesting. The beginning and the end of the line are good reference points to start analysing text, so it is good that regular expressions provide this two special positioning characters.

In the next lesson we will discuss multiple matches, but for the time being be happy, your knowledge of regular expressions is increasing day by day!

Suggested film for the evening: Jason and the Argonauts (1963)