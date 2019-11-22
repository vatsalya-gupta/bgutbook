# Day 4 - Beginnings and ends

{blurb, icon: quote-right}
- _Come, let's begin._
- _We ended in F major._
Amadeus (1984)
{/blurb}

Many times people don't read long messages. You should be careful when you send emails, for example. If they are too long people tend to read the beginning and then skip the central part and read the end. That is, if the core of the message was the final result of your 20 years long research on time travel which shows how to build a time machine out of a dishwasher, it is lost. Gone. Sorry, you should have been more concise.

While this might be a bad habit people have, reading the initial and the final part of some stream of data comes in handy very often. For example, we might want to list files in order of size and then get the top 5 ones, or we might want to print out the last 10 log messages of your system, just to keep an eye on what is happening.

Well, Unix provides two nice commands to perform those actions, namely `head` and `tail`. You should be able to tell which is which from the name, which is a very nice thing their authors did for us. When you run

``` sh
$ head <file>
```

the system will show you by default the first 10 lines of the file. You can try this and the following examples on the `slices.txt` file provided in the examples repository. That file is just a sequence of numbered lines, from 1 to 20, so that you can easily check if what you did is correct. So `head slices.txt` should shows you lines 1-10. Conversely, if you run `tail slices.txt` you will get lines 11-20, that is the last 10 ones of the file.

Ten lines are usually a good amount of content if you want to have a quick look into a file, maybe to just have a glimpse of how the content is structured, but you might want to print less or more lines. This can be done in both commands with the `-n` switch followed by the amount of lines that you want. That is, `head -n3 slices.txt` will print the first 3 lines of the file.

Please note an important thing about the Unix command line: switches and their values can be optionally separated by spaces, so executing `head -n3 slices.txt` or `head -n 3 slices.txt` gives you the very same result. You can also add more than one space between the switch and the value, if this makes you happy, but when we will start dividing the text in columns you will not be that happy anymore about multiple spaces, so maybe just don't do it. Friendly advice.

There are some exercises that I can leave to you about `head` and `tail`. All exercises can be performed on the `slices.txt` example file, to get an immediate feedback from the numbered lines, but if you feel confident you can use other files as well.

{#exercise_4_01}
### Exercise 4.01
Show the first 3 entries of `slices.txt`

[Go to solution](#solution_4_01)

{#exercise_4_02}
### Exercise 4.02
Show the last 3 entries of `slices.txt`

[Go to solution](#solution_4_02)

{#exercise_4_03}
### Exercise 4.03
Show the content of `slices.txt` skipping the last 3 lines

[Go to solution](#solution_4_03)

{#exercise_4_04}
### Exercise 4.04
Show the content of `slices.txt` starting from line 3 (that is, skipping the first 2 lines)

[Go to solution](#solution_4_04)

That's all for today. Was it complex? Was it boring? Well, I'm sorry but I can't hear your answer, I wrote this book some time ago. At any rate, if you think we are going to slowly you can go on freely, the daily frequency is just a suggestion. For today, I also suggest a good cup of tea and maybe some biscuits. Next stop, some plumbing: one of the most important things you can learn about Unix.