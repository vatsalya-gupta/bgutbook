# Day 5 - Semicolon, logical AND, pipes

B> _All right. Let's just think this thing through logically._
B> - Back to the Future Part III (1990)

So far it looks like bash and Unix are not using those nasty strange symbols many other programming languages or systems use. Well, that's good, isn't it? Yes, but it's also tragically untrue. In this lesson we will meet some of the fancy hieroglyphs that Unix uses to express complex behaviour, so if you are still ruminating on that class of ancient Babylonian language that you missed at the university, be happy. You will soon catch up.

First of all let's explore the semicolon. Try to add a semicolon between two commands, like for example

``` sh
echo "First string"; echo "Second string"
```

As you can see bash runs both in sequence, so `;` clearly stands for a sort of "and" between two commands. It is interesting to see what happens if one of the commands fails, though. Let's try to get the content of a file that doesn't exists as first command.

``` sh
cat nofile.txt; echo "Second string"
```

Well, the output of this double command is an error message from `cat` (which mercilessly sends us to the naughty step TODO), followed by the output of the `echo` command. So, the semicolon is executing both commands whatever the result of them.

It is however often useful to chain commands in a different way, where a failing command interrupts the execution. For example you might want to find all files with a certain name and create a log file with some statistics, but you don't want to run this last step if there are no files. For the time being let's see what the operator `&&` does to the previous two commands

``` sh
cat nofile.txt && echo "Second string"
```

It looks like this is exactly what we were looking for. We get the error message from `cat` (and the naughty step again, sorry), but no output from `echo`. Bash interrupted the execution because one command failed. Put this is your belt, it will come in handy sooner or later.

There is a third ancient glyph that made it through the fall of the ancient Egyptian kingdom and landed in the Unix system, and it is one of the most important operators that you have to learn. So, grab some strong coffee, you need to be awake.

So far, when we run commands the output was printed (magically?) on the terminal, and that's fine, as most of the time we want to see what a command does. The input of the commands, on the other hand, came almost exclusively from files that are already on your hard disk. What happens you you run

``` sh
head -n 10 slices.txt | tail -n 5
```

If your system doesn't have the hiccup you should see the lines from 6 to 10 of the `slices.txt` file. But, but... we asked `head` to show us 10 lines, this is definitely fishy. The `|` operator is called "pipe" and its effect is that of piping the output of the first command, preventing it to reach the terminal, and instead going directly into the `tail -n 5` command. So we got the last 5 lines of the first 10 lines of `slices.txt`, that is lines from 6 to 10. 

I told you this lesson was about plumbing. 

Many Unix commands that work on files accept input from a pipe instead, and you might see now why this is so important. Through pipes you can connect commands, creating your own complex operators from simpler ones.

And now, welcome to the "Operating Systems Philosophy" class of professor Unix! I'm only half joking here, the so-called "Unix philosophy" dictates that you should provide small programs that do a very specific things, and that do it at their best. You will then compose them with pipes and other operators to create more complex programs.

Enough for today! You will probably have nightmares about leaking pipes TODO, philosophers and Pharaohs. I can only recommend a good book and a cup of tea. Just don't read anything related to ancient cultures!
