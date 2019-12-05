# Day 14 - Regular expressions - Multiple matches

{blurb, icon: quote-right}
-- _A date gives you a corsage, not a multiple fracture._
Little Shop of Horrors (1986)
{/blurb}

Well, not bad at all! We are still alive after 3 lessons about something that is considered an advanced topic. Congrats! I hope you are not only surviving, but actually enjoying the journey. I think you start TODO to appreciate that regular expressions are not actually difficult, they are however complicated, full of special symbols and rules. So far we learned how to use `.` for any character, square brackets `[` and `]` for classes and ranges with `-` inside them, and finally the two anchors `^` and `$`.

Today we'll have a look at multiple matches. Generally speaking a multiple match is a repeated match of a previous regular expressions, and typical use case is when you need to match a specific number of digits or letters, but multiple matches can also be less specific, for example matching an indefinite number of lowercase letters.

Let's start with exact matches, which are performed with the syntax `{N}`, where `N` is the number of matches . As I said, all multiple matches operations refer TODO to a previous regular expression, so if you write

``` sh
$ grep -E "a{2}" examples.txt
aardvark
```

you are asking `grep` to match all groups of 2 adjacent characters `a`, as in `aardvark`. The number between brackets can be any positive number, even though using 1 makes no sense, as a single character is already a regular expression matching one repetition of it. So, while you can execute

``` sh
$ grep -E "a{1}" examples.txt
```

and get the correct result, this is equivalent to 

``` sh
$ grep -E "a" examples.txt
```

and I personally don't see a point in making the regular expression more complex to read introducing the braces. If you like complicating your life try to create a social network in PHP. Wait a minute, what you mean they did it?

The braces repeat the previous regular expression component, so the syntax `a{2}` is equivalent to a literal `aa`. The syntax can be used to repeat more than letters, though, as they apply to any previous component of the regular expression. This command, for example

``` sh
$ grep -E "[a-z]{3}" examples.txt
dog
cat
elephant
ostrich
Dug the Dog
beholder
[...]
```

matches exactly three adjacent lowercase letters. Is is worth noting TODO that the patterns do not overlap: for example, in `elephant` the regular expression matches `ele` and `pha` only, and not `ele`, `lep`, `eph`, and so on. Once a pattern has been matched it is skipped to continue the line analysis. This is pretty clear if you use the `-o` option of `grep` that we learned previously, which outputs only the matching part of the string

``` sh
$ grep -Eo "[a-z]{3}" examples.txt
dog
cat
ele
pha
ost
ric
the
beh
old
[...]
```

TODO investigate grep and overlapping RE patterns

The braces allow you to specify ranges, so `{n,m}` means from `n` to `m` repetitions, `{n,}` means `n` or more, and `{,m}` form zero to `m`. For example

``` sh
$ grep -E "[a-z]{8,12}" examples.txt
elephant
beholder
aardvark
direwolf
manticore
basilisk
```

matches all lines containing at least one word made of 8 to 12 lowercase letters. Two specific ranges a re used very often, namely `{1,}` and `{0,}`. The first matches one or more repetitions of a component, and it is useful when you know that at least one occurrence will be there, but you are unsure of the upper limit. The second one, instead, is used to match possible occurrences of a component. As these two ranges are very important, there is a special syntax for them. `{1,}` can be written `+`, while `{0,}` can be written `*`. So, the code

``` sh
$ grep -Eo "D[a-z]+" examples.txt
Dug
Dog
```

matches the letter `D` followed by at least one lowercase letter, so the output contains both `Dug` and `Dog` (pay attention to the `-o` option used here to clearly show the matches). The code

``` sh
$ grep -Eo "D[a-z]*" examples.txt
Dug
Dog
D
```

instead, also matches the single `D` that comes from the line `R2-D2`, as that `D` is actually followed by zero or more lowercase letters. Pay attention to the last two examples: as you can see the `+` and the `*` are applied to the last _component_ of the regular expression, as happened for the braces, and not to the last _character_. The fact that a single letter or digit is also a regular expression component is just a particular case TODO.

* * *

{EXERCISES 14}

* * *

Multiple matches are one of the most used components of the regular expressions' syntax, so make sure you feel comfortable with them. After all, they save a lot of typing, and allow to cover a great number of cases with just a couple of symbols, so they are a good tool for your belt.

Now it's maybe time to relax, if it's evening and you are home, or to focus on something else if you still have to begin your day. Have a great day/a lovely evening!

Suggested film for the evening: The Social Network (2010)
