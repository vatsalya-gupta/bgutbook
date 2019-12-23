# Day 11 - Find and replace text

{blurb, icon: quote-right}
-- _I've got to find a replacement for the chief._
Das Boot (1981)
{/blurb}

Searching is one of the more frequent activities of computers, algorithms, and also programmers. You search a given variable in a text, you want to find all the occurrences of a name in a book, you want to extract all the timestamps in a log file with a specific day and hour. These are just some examples of how searching can be used in your daily life (as a programmer or not).

Replacing text is less frequent than searching only because you fist need to search for the text in order to replace it. You want to replace text because you need to format some data in a different way, because you want to reuse part of it, and in general because you want to transform data.

In this chapter I will introduce two tools that I use every single day, and definitely in every script that I write, `grep` and `sed`. We already briefly covered `sed` in chapter 6, but in this chapter we will start discovering its true potential. Both tools, `sed` in particular, are very powerful and provide many options, thus I will not cover them completely in this book. You will find a lot of information in the respective man pages and in plenty of online resources covering these tools.

We will unlock the full power of both `grep` and `sed` only once we will learn regular expressions in Part 2 of the book, but in this chapter we can start familiarising with the syntax and with their role. In the whole chapter I will make use of the examplex.txt file that you should have among the files provided for the book.

Let's start with `grep`. This tool was born inside the grandfather of all editors, `ed`, as the "Globally search a Regular Expression and Print" command, and was eventually converted into the stand-alone utility that we are still using nowadays. The tool's man page says that `grep` prints lines that match patterns, thus it's the tool that we will use every time we need to find specific parts of some text.

Are you already asleep? I am dozing. Enough chatting! Code first and boring explanations later!

If you execute this code

``` sh
$ grep "elephant" examples.txt 
elephant
```

you notice that `grep` found the line that contained the proovided string `elephant` and printed it. The tool find partially matching lines by default, that is lines that contain the searched string and other characters.

``` sh
$ grep "red" examples.txt 
undead red dragon
```

If you want to find only the matches that cover the whole line use the `-x` option

``` sh
$ grep "dog" examples.txt 
dog
dog
corn dog
$ grep -x "dog" examples.txt 
dog
dog
```

By default `grep` performs a case-sensitive search, so lowercase and uppercase are meaningful. If you want to perform a case-insensitive search use the `-i` option

``` sh
$ grep "H" examples.txt 
H2O
HTTP/1.1
$ grep -i "h" examples.txt 
elephant
ostrich
Dug the Dog
beholder
H2O
phase spider
Johnny 5
hogwash
wild hog
HTTP/1.1
hog
```

Once we find what we need, or when we have a certain text in a variable, we often want to change it, replacing parts of it with something different. The `sed` utility can do this (and actually many other things). Try to execute

``` sh
$ grep "elephant" examples.txt | sed s,"ele","oli",
oliphant
```

which replaces the string "ele" with the string "oli". The `s` command of `sed` needs to receive the search and the replacement patters surrounded by a character that is not part of them. In this case I used the comma, but you will find many times the `/`, which is another typical character used for this tool

``` sh
$ grep "elephant" examples.txt | sed s/"ele"/"oli"/
oliphant
```

I tend to avoid the `/` in my `sed` command because many times I run it on file paths, which contain the `/`, thus making the command fail. Obviously, the comma doens't work well if your main activity is to process comma-separated values files (CSV), so your mileage may vary. Just to see that `sed` really doesn't mind the separation character, try to execute

``` sh
$ grep "elephant" examples.txt | sed svelevoliv
oliphant
```

To be clear, not only I do not endorse such a cryptic syntax, but if you dare to use it and tell people that I told you to do so I will `grep ${you} universe.txt | sed s,"${you}","void",`. Friendly advice. =) You can also notice from this last example that quotes are optional. As usual, I believe they make the whole command easier to read, so my suggestion is to use them always.

By default, `sed` will replace only the first occurrence of the search string, and if you want to replace all of them you need to use the `g` option

``` sh
$ echo "abracadabra" | sed s,"a","_",
_bracadabra
$ echo "abracadabra" | sed s,"a","_",g
_br_c_d_br_
```

One interesting feature of `sed` is that the replacement pattern can contain the matched pattern, which avoids repetitions if we need to reuse it

``` sh
$ echo "abracadabra" | sed s,"a","&-",g
a-bra-ca-da-bra-
```

This will be superseded by groups and backreferences as soon as we will learn regular expressions, but for the time being it's a nice trick to learn.

* * *

## Exercises

There are not many interesting exercises to do with `grep` and `sed` in this simple form. Be sure to practice their different options, though, as they will come handy.

{EXERCISES 11}

* * *

We will meet `grep` and `sed` again (and again and again) in the book and basically every time we will write some script. When we will learn regular expressions they will be back in play, and we will unleash their true power! Have a nice evening, or, if it's still morning `s,"evening","day",`!

Suggested film for the evening: Fantasia (1940) - What else do you think about when you read "elephants" and "abracadabra"?
