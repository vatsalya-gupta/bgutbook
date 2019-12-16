# Preface

{blurb, icon: quote-right}
-- _Help me, Obi-Wan Kenobi. You are my only hope._
Star Wars (1977)
{/blurb}

## Who this book is for

This book is meant for anyone wants to be more productive in a Unix environment such as Linux or Mac OS. This is an introductory textbook, so the reader is supposed to have no previous knowledge of the subject matter, and they should expect to learn the most important commands and concepts they might be using daily.

In recent years the gap between developers and system administrators has been fortunately reduced in various ways, all under the umbrella of the devops philosophy, so this book will be useful to those developers that have to start getting in touch with the "bare metal". These developers might find in the book a gradual learning curve and a quick reference for the most common commands of a Unix environment.

On the other hand, there are people (like the author of this book) who are interested in the low-level side of applications development, and want to pursue a career as system administrators or architects. For these people, this book can be a good starting point, where they can be introduced to tools and concepts they will use every single day. They will probably soon feel the need of something more complete and deeper, and there are tons of books and resources that can quench the thirst for TODO knowledge, but I hope they will enjoy the first steps that they will move together with me.

## Why this book exists

When I decided to write this book I was working on a series of short workshops for my junior colleagues. I hadn't worked with juniors for many years, and while I was perfectly conscious that some people didn't grow up with a command line, practically speaking I was assuming that they knew what I did, which is probably a mistake that many advanced programmers make.

So, I decided to run some sessions in which we discovered together the bash shell, starting from the simplest commands up to some proper scripting. I was rewarded (and I still am) by a lot of satisfied smiles when they finally got the right sequence of pipes or when they discovered regular expressions. From those sessions, and from the notes that I wrote to prepare them, I had the idea of a book that could be easily followed, maybe in one's spare time, as nowadays it's always very complex for people to find time to study big tomes.

I usually avoid trying to be funny when writing or speaking in English; it's not my native language, so I lack the vocabulary and the comedic timing. But a thing that I learned many years ago is that a laugh helps people to remember what was said, so this time I decided to try with a light-hearted approach. I hope this will ease the read and make your journey into the Unix world more comfortable.

If it doesn't work, I apologise in advance. you can always go and get some ancient tome of dark magic like "The Unix Bible". I'm pretty sure you will remember for years the moment in which you'll manage to conjure some sort of multi-tentacular Lovecraftian horror, but I'm not sure this will have a significant impact on your career. If we exclude the fact that it will probably put an end to it, obviously.

## Why you should read this book

If you are a programmer, nowadays you probably got in touch with Open Source software, with version control system like Git, with cloud services like AWS, with some dynamic language like Python or Ruby. What do all these things have in common? Many things probably, but one of them is definitely that they are rooted in the Unix world. [^win]

[^win]: Sure, you can have all these things in your Windows laptop (Windows is not a Unix-like operating system), but I can't recommend it. I mean, you bought a water pistol, and you want to use it with real bullets. Good luck!

That of Unix is a rich world, and this book will not even scratch the surface. but one of the most powerful things Unix systems have is the command line. Yes, in 2019, with AIs constantly processing everything we search and do online, mobile phones with perfect user interfaces, and proper virtual reality around the corner, the good old green-on-black terminal still has something to say. Actually more than something!

The command line is a tool that I think will never get too old to be useful. I am happy when the GUI of some program is simple and well designed, but there is simply nothing that can give you more power than the command line.

So, long story short, you should definitely learn at least the fundamentals of the command line!

## Who should not read the book

To put it simply TODO, this is a primer, so if you are an advanced Unix user you should stop reading here. This book is not for you. If you decide to go on, however, please consider that this wants to be an introduction to Unix for people who never heard of it. Yeah, I know it sounds incredible that people can use a computer without a terminal and that they can survive day by day thinking that pipes convey TODO water and that sockets are useful only in winter, but this is why I believe a book like this can be useful.

To be fair, if you want to introduce a novice to Unix in 2019 you have to face 50 years of history and a legacy of countless choices that sound perfectly reasonable to people who grew up into them. There are at least two widespread implementations of it, Linux and Mac OS X, the first of which comes in dozens of different flavours (distributions) and the second of which behaves in all sorts of unexpected ways.

So, I had to compromise. In particular, dear expert nitpicker, you will notice that I use the terms "Unix", "Unix shell", "bash", "terminal" as synonyms. And believe me, I cringe every time I do it. But, to be honest, this book wants to be a primer for people who don't know anything about what is arguably a niche subject. And my experience tells me that the best way to dishearten someone is to make them feel stupid, flooding the conversation or the lesson with tons of terms they never heard and that they do not understand. Sure, this makes you shine, but what's the point?

So, sorry. I know the nomenclature in the book is all but accurate, and I hope that novices will come back to this book after some years, smiling at the levity with which I desecrated the holy ground of Unix.

## The prompt

The command line always prints a fixed string in front of each line when waiting for input. This is aptly called _prompt_. The prompt is highly customisable, as it is an invaluable source of information to have handy. My prompt, for example, typically contains the full path of the directory I'm in at the moment, so that I have a clear idea of my position at any time. Many people add the current time, or the Git branch they are in at the moment. Since the prompt changes from system to system, and from user to user, it is custom to represent it with a dollar sign `$`. So this

``` sh
$ command --option value --another-option another-value
```

means that you are supposed to type the string from `command`, as the `$` is already there  in some form on your terminal.

I will often show the output of the command as it appears on the terminal, just under the prompt, like this

``` sh
$ command --option value --another-option another-value
output line 1
output line 2
output line 3
output line 4
output line 5
```

I will include the output of the command when it is relevant for the explanation and generally when it is not too long. The idea of the book is that the reader should test the commands on their own terminal, so I consider it pointless to fill pages with output that nobody will ever read. When I need to truncate the output I will include an ellipsis TODO between square brackets as in the following example

``` sh
$ command --option value --another-option another-value
output line 1
output line 2
output line 3
[...]
```

If you fancy some historical information, the dollar sign used for the prompt was apparently first introduced in Version 7 Unix, released in 1979 by Bell Labs, as that was the first version to be shipped with the Bourne shell. So much for long-lasting choices!

## Discrimination of fruit-labelled products

Mac OS is the Unix-like operating system with the largest desktop user base among programmers, as many of us have an Apple notebook as their primary device. I'm not one of them, and I was very surprised to find out that the shell provided by Mac OS is only partially compatible with the traditional bash shell provided by Linux distributions. In particular, the core utilities of Mac OS are not the GNU ones, so many command line options are not present, or different.

As I want to publish this book before I retire, I will go for the simplest solution. I won't provide examples or explanations for the Mac OS terminal, I'm sorry. If you are using a Mac, either for your personal choice or because of some external constraint, you will have to look for some specific solutions online.

For the time being, I will provide instructions to run a Linux machine in a Docker container, so everybody can follow the lessons and enjoy the book. Maybe in the future I will provide some coverage of non-GNU versions of the standard utilities, but now this is too complex a task for me.

(Despite the mocking tone, I'm really sorry I can't provide instructions for every case!)

## Acknowledgments

* TODO Unix, Linux, bash authors
* TODO The Bash book
* Łukasz Dziedzic, who developed the free "Lato" font ([Latofonts](http://www.latofonts.com)), used for the cover.

The cover photograph is by [pxhere](https://pxhere.com/en/photo/175470). A detail of the photo has been extracted and edited. This book is written by a commuter for commuters. We spend countless times in stations and on public transport, and even these places can reveal a secret beauty.

## Sources

The sources of the knowledge I tried to distil TODO in this book are countless. ManypPeople and books written by them, forums, Stack Overflow TODO answers, a lot of experiments, a couple of hard disk partitions zapped trying to understand how the filesystem works, and a decent number of years spent automating processes. While all these are too many to be properly mentioned I can definitely provide the source of the log file used in the examples and the exercises. It is a simplified version of an Apache log file that can be downloaded at https://github.com/elastic/examples/blob/master/Common%20Data%20Formats/apache_logs/apache_logs