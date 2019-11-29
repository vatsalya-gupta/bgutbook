# Day 11 - Regular expressions - Single characters

{blurb, icon: quote-right}
-- _You know, you got to keep regular if you want to be happy._
The Shining (1980)
{/blurb}

Some time ago, I needed to review around 1000 files to check if IP numbers were mentioned in them. I wasn't looking for a specific number, the requirement was to find IP numbers in general. Trying all of them was absolutely out of the question, as IPv4 has a pool of 4 billion possible addresses. At 1 address per second it would take a little bit more than 136 years, and while I am still in my forties I somehow doubt that I have that amount of time. Especially to spend finding IP addresses! Fortunately I know regular expressions, and the whole task took me approximately 1 minute.

Searching is one of the more frequent activities of computers, algorithms, and also programmers. You search a given variable in a text, you want to find all the occurrences of a name in a book, you want to extract all the timestamps in a log file with a specific day and hour. These are just some examples of how searching can be used in your daily life (as a programmer or not).

Regular expressions are the most powerful tool you can learn when it comes to searching (and replacing) text. They are strings, with a specific syntax, that are used to search other strings. They unfortunately have a reputation of being incredibly complicated, and I hope I will TODO debunk this myth. You can definitely come up with complex regular expressions, and sometimes it can take you a while to figure out how to express a specific pattern, but you will see that they are definitely accessible.

Did I manage to instill hope you? Yes? Good, because this chapter will be incredibly difficult. Just kidding!

To practice regular expressions we are going to use the file examples.txt and a new command line tool, `grep`. This tool was born inside the grandfather of all editors, `ed`, as the "Globally search a Regular Expression and Print" command, and was eventually converted into the stand-alone utility that we are still using nowadays.

Are you already asleep? I am dozing. Enough chatting! Code first and boring explanations later!

Let's see `grep` in action

``` sh
$ grep -E "dog" examples.txt
dog
dog
corn dog
```

Why are we using the `-E` option? You said boring explanations later, right? So, for the time being, just use it! (Hey, I'm joking, I will explain it later, don't worry). As you can see this command printed three lines. If you have a look at the content of the file (with `cat`) you will see that those lines are the lines number 1, 8, and 11. They have been printed by `grep` because they contain the string `"dog"` that we specified on the command line. The command highlights the matching part in red by default.

So far, I think, everything is pretty straightforward. The last line is actually the only one that contains words other than the one we searched, but `grep` printed the whole line anyway. If you want `grep` to print only the matching part of the whole line you have to specify the `-o` option (which is the short version of `--only-matching`)

``` sh
$ grep -Eo "dog" examples.txt
dog
dog
dog
```

This is often useful, but in the next examples I won't use it because I want you to see the whole line with the matching part highlighted.

Time to write the first regular expression, we are not here to just see cats and dogs. Let's run the following command (remember there is no `-o` option this time)

``` sh
$ grep -E "d." examples.txt
dog
beholder
dryad
dog
aardvark
corn dog
direwolf
phase spider
undead red dragon
Spider-Man [*]
wild hog
Big Bad Wolf
```

As you can see `grep` highlights groups of two letters, all of them starting with `d`. The "do" in **do**g, the "de" in spi**de**r, the "dr" in **dr**agon, all these lines have one thing in common: they contain a `d` followed by another symbol (a letter or a space, as happens for example in "wil**d** hog").

This is what the symbol `.` does in a regular expression. It doesn't mean a full stop, like in the standard punctuation usage, but "any character". Whenever a regular expression contains a `.` there can be any single character. Mind the fact that a single `.` matches a single character.

As you can see, then, regular expressions are simple strings, but they can contain either normal characters (mostly letters of the alphabet, both lowercase and uppercase, and numbers) and special ones. So far we learned about only one of the special characters, that is `.`, commonly called "dot" in this context.

How do we match a proper dot in the string? Since regular expressions assign a special meaning to some characters, when you want to use those characters for their original value you have to escape them TODO fix the examples file. To escape a special character you have to use a backslash, so 

TODO example

* * *

{EXERCISES 11}

* * *

Let's wrap up this short (and hopefully simple enough) introduction to regular expressions. You can already appreciate that a simple syntax like "d." has a powerful meaning and can match many different strings. In the exercises we were already able to create a nice and useful filter for HTTP codes without knowing in advance which ones were contained in the file. In the next lesson we will keep discussing regular expressions introducing new parts of their syntax.

If you head is spinning, sit, relax, have a drink (maybe a soft one, otherwise the spinning will just get worse). It's time for something not related to regular expressions, editors, and command lines. What about a documentary on the history of operating systems? Just kidding! Have a walk, watch a TV series, enjoy your day!

Suggested film for the evening: 