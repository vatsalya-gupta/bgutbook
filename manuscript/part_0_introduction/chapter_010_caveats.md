# Making excuses

OK, if you are an advanced Unix user you should stop reading here. This book is not for you. If you decide to go on, however, you have to leave your knowledge behind, you have to pretend you don't know all those fancy terms, names, concepts.

Because introducing people to Unix is complex, and I had to make all sorts of compromises.

In 2019, if you want to introduce a novice to Unix you have to face 50 years of history and a legacy of countless choices that sound perfectly reasonable to people who grew up into them. There are at least two widespread implementations of it, Linux and Mac OS X, the first of which comes in dozens of different flavours (distributions) and the second of which behaves in all sorts of unexpected ways.

So, I had to compromise. In particular, dear expert nitpicker, you will notice that I use the terms "Unix", "Unix shell", "bash", "terminal" as synonyms. And believe me, I cringe, every time I do it. But, to be honest, this book wants to be a primer for people who don't know anything. And my experience tells me that the best way to TODO discourage someone is to make them feel like idiots, flooding the conversation or the lesson with tons of terms they never heard, and that they do not understand. Sure, this makes you shine, but what's the point?

So, sorry. I know the nomenclature in the book is all but accurate, and I hope that novices will come back to this book after some years, smiling at the levity with which I desecrated the holy ground of Unix.

# Discrimination of fruit-labelled products

Mac OS is the Unix-like operating system with the largest desktop user base among programmers, as many of us have an Apple notebook as their primary device. I'm not one of them, and I was very surprised to find out that the shell provided by Mac OS is only partially compatible with the traditional bash shell provided by Linux distributions. In particular, the core utilities of Mac OS are not the GNU ones, so many command line options are not present, or different.

As I want to publish this book before I retire, I will go for the simplest solution. I won't provide examples or explanations for the Mac OS terminal, I'm sorry. If you are using a Mac, either for your personal choice or because of some external constraint, you will have to look for some specific solutions online.

For the time being, I will provide instructions to run a Linux machine in a Docker container, so everybody can follow the lessons and enjoy the book. Maybe in the future I will provide some coverage of non-GNU versions of the standard utilities, but now this is too complex a task for me.

(Despite the mocking tone, I'm really sorry I can't provide instructions for every case!)

# The prompt

The command line always prints a fixed string in front of each line when waiting for input. This is aptly called _prompt_. The prompt is highly customisable, as it is an invaluable source of information to have at a glance TODO. My prompt, for example, typically contains the full path of the directory I'm in at the moment, so that I have a clear idea of my position at any time. Since the prompt changes from system to system, and from user to user, it is custom to represent it with a dollar sign `$`. So this

```
$ command --option value --another-option another-value
```

means that you are supposed to type the string from `command`, as the `$` is already there  in some form on your terminal.

If you fancy some historical information, the dollar sign was apparently first introduced in Version 7 Unix, released in 1979 by Bell Labs, as that was the first version to be shipped with the Bourne shell. So much for long-lasting choices!
