# Day 15 - Regular expressions - Groups

{blurb, icon: quote-right}
-- _They come in groups of threes.__
Escape from New York (1981)
{/blurb}

Oh, groups. How much do I love groups? Let's see, definitely less than pizza, but after all that's an easy win. Well, culinary comparisons aside, I consider groups one of the best features of regular expressions, both for their expressive power and for the fact that they introduce a certain tool that is usually provided by programming languages only: variables.

Let's start considering why groups are important. Generally speaking groups allow you to isolate specific parts of the regular expression and reuse them later, but the way you can reuse them depends on the tool that you are using. Groups are particularly useful with `sed`, as they greatly improve the search and replace syntax.

The following code uses `sed` to parse a regular expression (enabled by the option `-r`), isolate a group with the parenthesis and use the matched pattern in the replacement string.

``` sh
$ echo "10:30" | sed -r s,"([0-9]{2}).*","H:\1",
H:10
```

The regular expression tries to match 2 adjacent digits (`[0-9]{2}`), but putting them in a group with the parenthesis makes `sed` store the value in a variable. In this case the value stored is `10`, and the rest is ignored by the `.*` that matches anything. As you can see the way `sed` uses to access the value of groups stored during the search is a backslash followed by a number. The first (and only, in this case) group is named `\1`, the second `\2`, and so on. So, the replacement pattern is a string beginning with `H:` and followed by the value matched and stored during the search, that is `10`.

Let's try something a bit more complex, with two groups.

``` sh
$ echo "10:30" | sed -r s,"([0-9]{2}):([0-9]{2})","H:\1 - M:\2",
H:10 - M:30
```

This time the regular expression looks for two digits in the first group, then for a colon, and then for another group of two digits. The two groups are named `\1` and `\2`, so they can be used in the replacement string. Please note that the colon is not included in any group as we don't need to store it, it is just an anchor to separate the two parts of the time.

Groups can include other groups, but it is important to note that the outer group still matches the whole expression. An example can clarify the matter. If you run

``` sh
$ echo "alpha10" | sed -r s,"([a-z]+([0-9]+))","Full code:\1 - Number:\2",
Full code:alpha10 - Number:10
```

you will realise that the inner group `([0-9]+)` matches the digits `10` but the outer group matched both the letters and the digits, basically acting as it was `([a-z]+[0-9]+)`, without the internal group.

When you use groups in the replacement string you are not forced to keep them in order, so for example

``` sh
$ echo "First,Second" | sed -r s/"(.*),(.*)"/"\2,\1"/
Second,First
```

is a very simple way to swap two fields in a comma-separated string. Well, maybe you don't think it is that simple, let's review it together. First of all I used a `/` to separate the search and replacement strings because the search string will contain a comma. The first group matches anything but up to the first comma, after which the second group captures the rest. In the replacement string I print the content of the second group, then a comma, and the content of the first group.

We can use groups in `grep` as well, even though the reuse of the matching values is obviously limited by the fact that `grep` doesn't replace text. The best use of groups in `grep` is with the so-called lookaround expressions, that are provided by the Perl-compatible regular expression syntax (PCRE), activated by the `-P` switch, as opposed to the `-E` that we used so far, that activates the Extended syntax (ERE). The differences between these syntaxes are outside the scope of this book, so feel free to investigate the matter online.

Lookaround expressions can provide information about the surroundings of a matching pattern without including the surroundings themselves. Let's look at an example: the simplest form of lookaround is the positive lookahead, where a group specifies what should follow the matching part of the string

``` sh
$ cat examples.txt | grep -P "[A-Za-z ]+(?=[0-9]+)"
Police 101
H2O
R2-D2
Johnny 5
Cyborg 009
```

Here, the matching regular expression is `[A-Za-z ]+`, so strings of lowercase letters, uppercase letters, and spaces. We are however interested only in those strings that are also followed by one or more digits `(?=[0-9]+)`. The effect is clear if you have a coloured output on your shell, or if you use the `-o` option

``` sh
$ cat examples.txt | grep -oP "[A-Za-z ]+(?=[0-9]+)"
Police 
H
R
D
Johnny 
Cyborg 
```

The immediate evolution of the positive lookahead is the negative lookahead, which is expressed by `?!`. You can start to see a pattern here (apt, speaking of regular expressions). Lookaround groups are introduced by a `?` and followed by a criteria, which can be equality (`=`) or inequality (`!`).

You can also use lookbehind expressions, which start with a `?<` instead of starting with a simple `?`. These expressions match patterns that follow the lookbehind group, for example

``` sh
$ cat examples.txt | grep -oP "(?<=[A-Z])[a-z]+"
ug
og
olice
ohnny
pider
an
yborg
ig
ad
olf
ony
ictures
```

That matches all the lowercase letters that follow an uppercase one, without including the latter. The lookbehind expression is `(?<=[A-Z])`.

A warning: lookaround expressions are often difficult to manage, and their behaviour can be surprising because it strongly depends on the implementation of the engine. You won't hit such complex cases now that you just learned how to use groups, but it might happen in the future. For the time being, please keep in mind that there are important things to learn about regular expression engines, such as if they are greedy or not. This book wants to be a primer, so I will simply pretend those issues do not exist, but remember that there is a lot to learn out there!

Back-references are actually supported by `grep`, but their behaviour can be surprising. The code

``` sh
$ cat examples.txt | grep -E "[A-Z]([0-9])-[A-Z]\1"
R2-D2
```

matches an uppercase letter followed by a digit (grouped), a dash, another uppercase letter, and the same digit that matched in the group. A string like `R2-D3` would not match this regular expression, because the digit 3 doesn't match the previous digit. Or maybe it won't match because the processing engine has a Star Wars lore checker inside!

A final interesting feature of groups is that they allow to use the `OR` logical operator at a local level. Let's first have a look at the operator in a standard regular expression without groups. Having read so far, you clearly understand the following regular expressions

``` sh
$ cat examples.txt | grep -E "^o"
ostrich
ogre
$ cat examples.txt | grep -E "a$"
gorilla
```

The first one matches the lines beginning with the letter `o`, while the second one matches those ending with `a`. You can match both at the same time with the logical OR represented by a pipe `|`

``` sh
$ cat examples.txt | grep -E "^o|a$"
ostrich
gorilla
ogre
```

Don't be confused by the use of the pipe symbol. In a regular expression this character doesn't have the meaning it has on the command line, that is to connect commands, it just represents a logical OR. It is a powerful tool, as it allows you to run multiple unrelated regular expressions at the same time, without forcing you to split them into several executions of `grep` or any other tool.

So far, though, the operator can only separate two whole expressions. Groups allow you to use the logical OR at a local level, as you can see in this example

``` sh
$ cat examples.txt | grep -E "[A-Z]([a-z]|[0-9]-)"
Dug the Dog
Police 101
R2-D2
Johnny 5
Spider-Man [*]
Cyborg 009
Big Bad Wolf
* TM Sony Pictures
```

The regular expression matches an uppercase letter, followed by either a lowercase letter (`Du`, `Cy`) or a digit and a dash (`R2-`). As I want the dash to follow only the digit, if present, this condition would be impossible to express in a single run without the OR operator, and without the support of a group I would have to repeat part of the expression twice. Always remember that duplicated code is evil, even in regular expressions.

* * *

## Exercises

Exercises! Groups can be complex sometimes, so testing your knowledge can't but be beneficial. Remember that you can always write regular expressions in an incremental way, adding pieces and testing what they do (maybe adding the occasional `head` to avoid getting too many output lines)

{EXERCISES 15}

* * *

 I think you should be proud of yourself, you made it so far and you are still alive. Are you? Hello? Just joking, I'm pretty sure you followed along and that the exercises made you appreciate groups even more. This chapter concludes our journey in the land of regular expressions, it's time to get into bash scripting. I warmly recommend to stop here for now, grab a drink, enjoy a walk, a game, something relaxing. See you in the next part of the book!

Suggested film for the evening: 