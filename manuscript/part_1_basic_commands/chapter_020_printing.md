# Day 2 - Printing

{icon: quote-right}
B> _Let Polly do the printing._ -- Jaws (1975)

No, forget paper and toner cartridges, we are still working with a keyboard and a screen. In this lesson we will learn arguably the most important part of any programming language or computer system, that is how to print strings on the screen. Yes, you heard me, artificial intelligence, the most useful thing a computer can do is still printing something on the screen. The second thing is obviously moving four ghosts in a labyrinth flooded with beads that you are trying to eat.

Jokes aside (just for this sentence, however), printing strings on the screen is very important, not only because it is the simplest and occasionally the better way to debug programs, but also because it provides a way to give a feedback to the user. And nowadays, with cloud computing and global networks, it's still extremely common for programmers and system administrators to interact with a text terminal. I personally believe that for these categories of computer users text terminals will never be outclassed by graphical user interfaces.

OK, jokes can come back from the naughty step. Let's stop rambling and finally print a string.

``` sh
echo <string>
```

Well, if you typed exactly `echo <string>` you probably got an error, because you should replace `<string>` with something that does not include nasty characters like `<` and `>`. Maybe `echo Hello, world!`. Yes, I know this is plagiarism.

Whatever, the command should have printed the string on the screen, just under the command line. Maybe you noticed that you didn't need to include quotes, so why don't you try to do it? Run `echo "hello, world!"` and see what happens. The same? Yes, you are right. So, are quotes useless in bash?

Hardly. Quotes are probably one of the worst topics in the whole bash syntax and generally speaking in the world of Unix scripting. Believe me, you will hate quotes at a certain point of your career, but don't despair. I lived to tell the tale, so you will as well. Just be aware for now, that if you want to wish ill upon an enemy system administrator you can say "May your quotes never work". That is worse than a sentient evil computer that wants to rule the world. I know, I read too much science fiction.

* * *

For today, before you fall asleep bored by my explanations, try these two quick exercises.

### Exercise 2.01
Print the string "Just a test"
[Solution](#solution_2_01)

### Exercise 2.02
Print a string without the trailing newline (check the manual page)
[Solution](#solution_2_02)

### Exercise 2.03
Print the string `"First line\nSecond line"` (mind the quotes). What happens? Can you find a way to convert that `\n` into a newline?
[Solution](#solution_2_03)

* * *

As a final remark, to leave you with some food for thought, what happens if you remove the quotes from the solution of the last exercise? Now go and watch a comedy film, or you will have nightmares.
