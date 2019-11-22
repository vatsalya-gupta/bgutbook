# Day 10 - Sorting and reducing

{blurb, icon: quote-right}
_But in the Latin alphabet, Jehovah begins with an "I"._
-- Indiana Jones and the Last Crusade (1989)
{/blurb}

Sorting data is paramount in so many cases. We sort data to ease the visual browsing, to pick the top entries according to some quantity, or to spot duplicates. Needless to say, Unix provides a specific tool for sorting, which is unsurprisingly called `sort`.

So, we are hackers, we pose as the keepers of deep and powerful knowledge about computers, and we go around sorting things with a command called `sort`? We definitely have to come up with some command with an obscure and meaningless name! Oh, wait, there are `grep` and `sed`, but we will discuss about them in a later lesson.

For the time being, let's spend some time with the self-explanatory `sort`. Since sorting is so simple and straightforward, `sort` is a command with... only 30 possible options. Well, it turns out simple things are many times not so simple! I will show you only a couple of these options, the ones I happen to use the most, but remember that you can read the man page and discover new useful ones.

For starters, let's use the bare command

``` sh
cat TODO | sort
```

Nice and simple. The output gets sorted alphabetically, with digits coming before letters and lowercase letters preceding uppercase ones.

When sorting numbers, however, the alphabetical order gives results that are probably not what we want

``` sh
seq 1 20 | sort
```

because we want `sort` to understand that `9` comes before `10`. This can be done with the `-n` option, which implements the numeric sort.

``` sh
seq 1 20 | sort -n
```

The default sorting order used by the command is ascending, that is following the alphabet (or the value of the numbers). To show the sorted list in reverse order we can use the `-r` option

``` sh
cat TODO | sort -r
```

which can be combined with `-n` to reverse a numerical sort

``` sh
seq 1 20 | sort -nr
```

The final command that I want to show you in this chapter, appears often after `sort`, and is called `uniq`. Its job is that of removing duplicated lines, leaving only one occurrence. This command, however, works comparing a line with the following one, which is the reason why we run it after a `sort`.

Not everybody hate duplicates (ask TODO), so `uniq` has several options that perform different tasks like for example printing only the duplicate lines. At any rate, in my experience the default behaviour is the most useful one.

Is there anything that people like more than sorting? Oh yeah, and it is pizza! Oh, sorry, I must have messed up my notes. What was I saying? Oh yes, what do we love more than sorting? Counting, naturally!

So, `uniq` can compress a sorted text, removing duplicated lines, but counting them, giving as output a nice report of the number of times a certain line appeared.

``` sh
cat TODO | sort | uniq -c
```

E100.01 Print the 5 more frequent IP addresses in the simple log file TODO
S100.01 `cut -d " " -f 1 simple.log | sort | uniq -c | sort -nr | head -n 5`

E100.02 Print the HTTP methods used by the requests in the simple log file TODO and count how many occurrences are there for each one.
S100.02 `cut -d " " -f 3 simple.log | sort | uniq -c`

Now, this is what I think you should know about sorting and removing duplicates. Time to relax! What about some pizza? After all I was wrong before, we probably love pizza much more than sorting! Cowabunga!
