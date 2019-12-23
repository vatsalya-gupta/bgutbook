# Day 10 - Sorting and reducing

{blurb, icon: quote-right}
-- _But in the Latin alphabet, Jehovah begins with an "I"._
Indiana Jones and the Last Crusade (1989)
{/blurb}

Sorting data is paramount in so many cases. We sort data to ease the visual browsing, to pick the top entries according to some quantity, or to spot duplicates. Needless to say, Unix provides a specific tool for sorting, which is unsurprisingly called `sort`.

So, we are hackers, we pose as the keepers of deep and powerful knowledge about computers, and we go around sorting things with a command called `sort`? We definitely have to come up with some command with an obscure and meaningless name! Oh, wait, there are `grep` and `sed`, but we will discuss about them in a later lesson.

For the time being, let's spend some time with the self-explanatory `sort`. Since sorting is so simple and straightforward, `sort` is a command with... only 30 possible options. Well, it turns out simple things are many times not so simple! I will show you only a couple of these options, the ones I happen to use the most, but remember that you can read the man page and discover new useful ones.

For starters, let's use the bare command

``` sh
$ cat examples.txt | sort
```

or, if you prefer

``` sh
$ sort examples.txt
```

Nice and simple. You might notice some oddities, though. Why the empty line at the beginning? And why is "* TM Sony Pictures" listed after "Spider-Man [*]"? By default, `sort` uses the so-called _dictionary order_, that, according to the man page, "considers only blanks and alphanumeric characters". This means that the "* " part of the string is not considered, and the position is given by the "T" letter of "TM", while the first line is the empty line that was in the second-to-last position in the original file. being empty, that is considered as a pure space that comes before letters in the ASCII code. According to the ASCII code, numbers come before letters as well, which is why "007" is positioned before "aardvark" in the sorted output.

When sorting numbers, however, the dictionary order gives results that are probably not what we want

``` sh
$ seq 1 20 | sort
1
10
11
12
13
14
15
16
17
18
19
2
20
3
4
5
6
7
8
9
```

We probably want `sort` to understand that `9` comes before `10`. This can be done with the `-n` option, which implements the numeric sort.

``` sh
$ seq 1 20 | sort -n
1
2
3
4
[...]
```

The default sorting order used by the command is ascending, that is following the alphabet (or the value of the numbers). To show the sorted list in reverse order we can use the `-r` option

``` sh
$ cat examples.txt | sort -r
```

which can be combined with `-n` to reverse a numerical sort

``` sh
$ seq 1 20 | sort -nr | head -n 5
20
19
18
17
16
```

The final command that I want to show you in this chapter appears often after `sort` and is called `uniq`. Its job is that of removing duplicated lines, leaving only one occurrence. This command, however, works comparing a line with the following one only, which is the reason why we run it after a `sort`.

The file `examples.txt` contains the word `cat` several times (because I'm not a cat lover, I'm a feline worshipper. Guess what's my favourite bash command). You can notice that the pure `sort` command lists that word three times in a row. If you run

``` sh
$ cat examples.txt | sort | uniq
```

though, you will see it listed only once. Not everybody hate duplicates, though (ask Gaius Baltar), so `uniq` has several options that perform different tasks like for example printing only the duplicate lines. At any rate, in my experience the default behaviour is the most useful one.

Is there anything that people like more than sorting? Oh yeah, and it is pizza! Oh, sorry, I must have messed up my notes. What was I saying? Oh yes, what do we love more than sorting? Counting, naturally!

So, `uniq` can compress a sorted text, removing duplicated lines, but counting them, giving as output a nice report of the number of times a certain line appeared.

``` sh
$ cat examples.txt | sort | uniq -c
      1 
      1 007
      1 aardvark
      1 basilisk
      1 beholder
      1 Big Bad Wolf
      1 bull
      1 C-3PO
      3 cat
      1 corn dog
      1 Cyborg 009
      1 direwolf
      2 dog
      1 dryad
      1 Dug the Dog
      1 elephant
      1 gorilla
[...]
```

As you can see results are ordered and reduced, but `uniq` also counts them before removing duplicates, so we know that there are 3 lines containing `cat` and 2 lines containing `dog`, while `basilisk` appears only once in the file. The result of `uniq -c` can be sorted again to get the results that appear the most or the least, you will have to find a way in the first exercise of this chapter.

* * *

{EXERCISES 10}

* * *

Now, this is what I think you should know about sorting and removing duplicates. Time to relax! What about some pizza? After all I was wrong before, we probably love pizza much more than sorting! Cowabunga!

Suggested film for the evening: Honey, I Shrunk the Kids (1989) - A scientist gets reducing a bit wrong and his kids have to sort it out.