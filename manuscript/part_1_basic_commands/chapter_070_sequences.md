# Day 7 - Sequences

{blurb, icon: quote-right}
_A coding sequence cannot be revised once it's been established._
-- Blade Runner (1982)
{/blurb}

Today we will relax a bit, lately we have been doing a lot, so it's time to learn something easy and straightforward. So, we will discuss distributed consensus in a network system. No, I'm just joking, that is actually far from being simple. OK, let's pick another topic: what do you think about sequences? I find them extremely useful, for example when you need to rename files and you want to give them a proper order.

Whatever the use, Unix provides a very nice command to create sequences of integers, aptly named `seq`.

Note: I'm always fuzzy TODO about the proper pronunciation of `seq`. As an Italian, I tend to pronounce it as "sec", but if you want to go for "sick" I understand you. Not the best name, but hey, we use a version control system called Git. The third option is that of spelling it, with the benefit that if you use the right tone you can sound like a TODO field officer during a battle.

The basic usage is very simple, as you just need to specify a number grater than 1 and `seq` will output all integers between 1 and that number.

``` sh
seq 10
```

Now, this is useful, but sometimes you need to count between two specific numbers, for example because you want to include 0, or because you simply need to start from 42, which is always a good initial value. In this case you just give `seq` the first and the last number

``` sh
seq 4 11
```

We are not restricted to positive numbers, however. If you give `seq` a negative starting point it will happily digest it

``` sh
seq -4 6
```

Unfortunately, the opposite doesn't work out of the box. If you try to execute `seq 4 -5` you won't get any output. To perform a reverse count you need to specify the interval between the steps, which is 1 by default

``` sh
seq 4 -1 -5
```

This will give you the sequence of integers 4, 3, 2, ... -4, -5. As you probably guessed, you can change the step arbitrarily, for example using 2 to skip every other number, or any other requirement you might have, for example

``` sh
seq 1 2 10
```

As you can read in the man page, the `seq` command has some command-line options. It is particularly useful to learn the `-w` switch, that prepends enough 0s to keep all numbers at the same length. For example

``` sh
seq -w 1 10
```

prepends one 0 to the numbers between 1 and 9 to get the same length of the last number, 10. This is called left zero-padding, in the elite circles TODO of programmers, but I bet you can also call it zero left padding and everybody would understand. Now shout "Launch a zero left-padded sequence!" and tell me if you don't feel like one the mecha pilots of some Japanese anime. I honestly thing it's cool.

I have one exercise for you this time! Yay! Your excitement is so great that it is travelling in time and reaching me in the past, while I'm writing the book. You can skip it if you want, but I think you should try to solve it to see if we are on the same page.

E70.01 Print the numbers from 5 to 15 padded with enough zeros to fill 5 digits.
S70.01 `seq -w 5 10000 | head -n 11`

That's it for today, I promised you it would have been a relaxing lesson: simple concepts, no homework, what more can you desire? A nice walk, this is what you need! Go, enjoy the nature if you can, or get your mecha and fight the alien invaders one zero-padded sequence at a time!
