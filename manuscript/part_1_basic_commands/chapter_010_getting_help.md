# Day 1 - Getting help

{icon: quote-right}
B> _Help me, Obi-Wan Kenobi. You are my only hope._
B> - Star Wars (1977)

The most important part of a software is the documentation. Sadly, often our software doesn't have good documentation, as "the fun" is in the code. We mostly enjoy developing a program that does something, not writing boring text. Fortunately for us, the Unix system and the people working in that environment have a great culture of documentation, and so the first thing you have to learn is how to find and read help on the commands you will learn.

Welcome to the Unix manual pages, or "man pages" for short. Whenever you need help on a command you can run

``` sh
man <command>
```

and enter a text-only (but very powerful, mind it) help system. To learn how to navigate the system let's get help on a rather simple command that we will learn shortly, `echo`.

``` sh
man echo
```

First of all, let me teach you some fundamentals TODO of man page driving. You can move through the documentation with your arrow keys, down and up, and with the page down and page up keys to quickly scroll the whole page. Please note that, since manual pages are read-only, there is no cursor, just a current line, which is the topmost one.

A nice help text at the bottom of the screen lets you know that this it

``` txt
Manual page echo(1) line 1/68 51% (press h for help or q to quit)
```

Quitting programs can be surprisingly complex at times (ask any `vi` novice user), but `man` exits to the system with a simple `q` for `quit`. Try it, then enter the manual page for `echo` again. Phew! At least we won't be trapped here forever.

The help system is not always that straightforward, though. There are commands to learn there as well. So, how do we get help... on the help? Well, as you can see from the bottom line while `q` stands for `quit`, `h` stands for `help`. So far so good, sooner or later there will be an `a` that stands for `zoo`, but the basic commands are apparently in good terms with the alphabet.

If you press `h`, then, the screen changes and shows the meta-help, which is the help on the help. I'm not going through it, you can read it later. For the time being, be aware that if you don't remember a command or a shortcut, you can ask the system itself before reading the whole Stack Overflow knowledge base looking for the answer.

There is one important action that is worth learning now, namely searching for strings. Manual pages can be very long, and sometimes very boring, endlessly discussing details that are apparently irrelevant, while you absolutely need _that_ switch now (most often because your system is crumbling to pieces, users are calling infuriated, but you still want to have the list of running processes ordered by CPU usage, because it's neat).

So, to seach for a string in a manual page you tap `/` (note the bottom line waiting for your input) and type the string that you are looking for. Try `escape`, remember to hit `ENTER` after you typed the word. Well, you should have been gratified by the TODO highlighting of the searched words, which is a great visual help. You can now move forward through the results hitting `n` (`n`ext), and backwards hitting `N` (`N`ot the next one, the previous one).

This is enough for now. You learned how to get help about commands, so from now on you have a tool to become a master of the Unix shell on your own. I still believe it is worth following the book, though, so don't close it now, there is a lot to learn that is not so easily distilled from man pages.

Oh, by the way. You can run `man man`, which despite the name is not a tome about the human condition.

