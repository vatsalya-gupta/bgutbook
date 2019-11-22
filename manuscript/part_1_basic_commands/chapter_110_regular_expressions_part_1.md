# Day 11 - Regular expressions - Single characters

{blurb, icon: quote-right}
_You know, you got to keep regular if you want to be happy._
-- The Shining (1980)
{/blurb}

TODO TODO This doesn't make sense. Well, we made it in one piece. You survived 10 lessons and you are still alive, I hope. We'll see how you are at the end of this lesson. Jokes aside, regular expressions are too broad a subject to be swallowed in a single gulp, and I don't want to choke readers, so in this and the following TODO lessons we will discuss them.

Are regular expressions difficult? It is true that computer scientists scare their kids threatening them with stories about regular expressions eating them if they don't go to bed? Is it true that many aspiring programmers ended their career prematurely because regular expressions are an insurmountable obstacle?

Honestly, no. Regular expressions are not impossible to learn and to master, they are not even difficult. They are complex, not complicated. The rules you have to learn are very strict, so they don't leave too much space to misinterpretation. They are, however, very powerful, and this power comes with a syntax that is very rich.

OK, OK, what I'm trying to say is that you have to study regular expressions and that they are more difficult to master than `cat` or `echo`, but I also want to convey the message that you can make it. I hope you will agree with me in some chapters.

What are regular expressions? They are strings, with a specific syntax, that are used to search other strings. Whenever you want to find a certain string in a bigger text, regular expressions are your best friend. Not only, you can use them to replace text in a smart way, but we will discuss this later.

Searching is one of the more frequent activities of computers, algorithms, and also programmers. You search a given variable in a text, you want to find all the occurrences of a name in a book, you want to extract all the timestamps in a log file with a specific day and hour. These are just some examples of how searching can be used in your daily life (as a programmer or not).

To practice regular expressions we are going to use the file examples.txt and a new command line tool, `grep`. This tool was born inside the grandfather of all editors, `ed`, as the "Globally search a Regular Expression and Print" command, and was eventually converted into a stand-alone utility.

Are you already asleep? I am dozing. Enough chatting! Code first and boring explanations later!

Let's see `grep` in action

```
TODO propagate the $ in the other chapters --> $ grep -E "dog" examples.txt
dog
dog
corn dog
```

Why are we using the `-E` option? You said boring explanations later, right? So, for the time being, just use it! (Hey, I'm joking, I will explain it later, don't worry). As you can see this command printed three lines. If you have a look at the content of the file (with `cat`) you will see that those lines are the lines number 1, 8, and 11. They have been printed by `grep` because they contain the string `"dog"` that we specified on the command line. The command highlights the matching part in red by default.

So far, I think, everything is pretty straightforward. The last line is actually the only one that contains other words TODO but `grep` printed the whole line anyway. If you want `grep` to print only the matching part of the whole line you have to specify the `-o` option (which is the short version of `--only-matching`)

```
$ grep -Eo "dog" examples.txt
dog
dog
dog
```

This is often useful, but in the next examples I won't use it because I want you to see the whole line with the matching part highlighted.

Time to write the first regular expression, we are not here to just see cats and dogs. Let's run the following command (remember there is no `-o` option this time)

```
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

Exercises

E18.02 Match "dog", "Dog", and "hog" into examples.txt
S18.02 `grep -E ".og" examples.txt`

E18.03 Log entries contain the string "HTTP/<version> <code>", where "<version>" is the version of the HTTP protocol in use (either `1.0` or `1.1`) and "<code>" is the HTTP request status code. Extract all lines with a status "4xx" (that is a status between 400 and 499). Count them TODO by status
S18.03 `grep -Eo "HTTP/.\.. 4.." ../etc/files/simple.log  | sort | uniq -c`

Let's wrap up this short (and hopefully simple enough) introduction to regular expressions. You can already appreciate that a simple syntax like "d." has a powerful meaning and can match many different strings. In the exercises we were already able to create a nice and useful filter for HTTP codes without knowing in advance which ones were contained in the file. In the next lesson we will keep discussing regular expressions introducing new parts of their syntax.

If you head is spinning, sit, relax, have a drink (maybe a soft one, otherwise the spinning will just get worse). It's time for something not related to regular expressions, editors, and command lines. What about a documentary on the history of operating systems? Just kidding! Have a walk, watch a TV series, enjoy your day!