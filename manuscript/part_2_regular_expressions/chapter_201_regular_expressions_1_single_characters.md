# Day 11 - Regular expressions - Single characters

{blurb, icon: quote-right}
-- _You know, you got to keep regular if you want to be happy._
The Shining (1980)
{/blurb}

Some time ago, I needed to review around 1000 files to check if IP numbers were mentioned in them. I wasn't looking for a specific number, the requirement was to find IP numbers in general. Trying all of them was absolutely out of the question, as IPv4 has a pool of 4 billion possible addresses. At 1 address per second it would take a little bit more than 136 years, and while I am still in my forties I somehow doubt that I have that amount of time. Especially to spend finding IP addresses! Fortunately I know regular expressions, and the whole task took me approximately 1 minute.

Regular expressions are the most powerful tool you can learn when it comes to searching (and replacing) text. They are strings, with a specific syntax, that are used to search other strings. They unfortunately have a reputation of being incredibly complicated, and I hope I will succeed in debunking this myth. You can definitely come up with complex regular expressions, and sometimes it can take you a while to figure out how to express a specific pattern, but you will see that they are definitely accessible.

Did I manage to instill hope you? Yes? Good, because this chapter will be incredibly difficult. Just kidding!

To practice regular expressions we are going to use the file examples.txt and our good friend `grep`. Let's see `grep` in action with the option `-E` that enables regular expressions 

``` sh
$ grep -E "dog" examples.txt
dog
dog
corn dog
```

So, apparently the option `-E` doesn't change the tool's behaviour, so disappointing. This is because the string `dog` is already a valid regular expression, namely the one that searches for the character `d`, followed by the character `o`, followed by the character `g`. You are probably thinking that I'm just beating around the bush, right?

Well, time to write the first "proper" regular expression, or at least to use some of the special syntax that regular expressions provide. After all, we are not here to just see cats and dogs. Let's run the following command (remember there is no `-o` option this time)

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

How do we match a proper dot in the string? Since regular expressions assign a special meaning to some characters, when you want to use those characters for their original value you have to escape them with a `\` (backslash). So, while

``` sh
$ grep -E "1.1" examples.txt 
Police 101
HTTP/1.1
```

matches two characters "1" separated by any single character, the regular expression

``` sh
$ grep -E "1\.1" examples.txt 
HTTP/1.1
```

matches only those separated by a literal dot. Pay attention that the dot can be a punctuation mark, a decimal point, or have any other meaning. Regular expressions don't know anythign about the text that you are parsing, they just consider pure characters.

* * *


{#exercise_11_01}
#### Exercise 11.01
Match "dog", "Dog", and "hog" into examples.txt

[Go to solution](#solution_11_01)

{#exercise_11_02}
#### Exercise 11.02
Log entries in the file `simple.log` contain the string `HTTP/<version> <code>`, where `<version>`` is the version of the HTTP protocol in use (either `1.0` or `1.1`) and `<code>`` is the three-digits HTTP request status code. Extract all lines with a status "4xx" (that is a status between 400 and 499). Count how often each status occurs.

[Go to solution](#solution_11_02)


* * *

Let's wrap up this short (and hopefully simple enough) introduction to regular expressions. You can already appreciate that a simple syntax like "d." has a powerful meaning and can match many different strings. In the exercises we were already able to create a nice and useful filter for HTTP codes without knowing in advance which ones were contained in the file. In the next lesson we will keep discussing regular expressions introducing new parts of their syntax.

If you head is spinning, sit, relax, have a drink (maybe a soft one, otherwise the spinning will just get worse). It's time for something not related to regular expressions, editors, and command lines. What about a documentary on the history of operating systems? Just kidding! Have a walk, watch a TV series, enjoy your day!

Suggested film for the evening: Reservoir Dogs (1992)