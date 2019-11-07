# Day 6 - Printing specific lines

Today I want to introduce you to a friend of mine, its name is `sed`. It's full name is actually "Stream Editor", but few remember it and it doesn't care that much. Actually it answers only when you call it with the nickname. Anyway, it is an incredibly powerful command, but for the moment I can't show you exactly what it can do, as you might not get how useful it will be for your work. We will thus explore just one of the many things it can do, and probably the less important one, which is to print lines.

The problem we often have is that of printing a specific line of a text. With `head` and `tail` we learned how to print a certain number of lines starting from the beginning or the end, but what if we want a line somewhere in the middle of the file? One possible solution comes from pipes. If you run

``` sh
head -n 5 slices.txt | tail -n 1
```

you are asking `head` to show you the first 5 lines of the file, and then filtering this output with `tail`, getting the last line. And this ultimately gives you exactly the line number 5.

So far so good, but this is a pretty convoluted way to just print line 5, isn't it? Indeed, `sed` thinks the same, and so it provides a simpler way to do it.

``` sh
sed -n 5p slices.txt
```

I know, I know. You think that `sed -n 5p` is not the first thing that comes to your mind when "simplicity" is the subject of the conversation. At any rate, I hope you at least agree on the fact that having only one command is better than having to pipe two of them. Your new friend `sed` accepts input from pipes as well, so whenever you want to see a specific line you can pipe the current command into it. We will see examples of this later in the book.

I said `sed` is extremely powerful, so is it possible it can only print a single line? Not at all, it can definitely print a sequence of lines, you just need to provide the first and the last line separating them with a comma.

``` sh
sed -n 3,8p slices.txt
```

This prints lines 3-8 of the given file. Are you not satisfied yet? OK, `sed` can also print a certain number of lines starting from a given one. This often saves me from the shame TODO of showing the world that I am terrible at math.

``` sh
sed -n 3,+5p slices.txt
```

This gives you the same output of the previous command, as it start at line 3, printing that and the following 5 lines. Pay attention that `sed` is not showing you 5 lines starting from line 3, but 6 lines. I think you probably still need you math skills.

Did you notice I haven't given you any exercise last time? Yes you did, I'm sure. Well, no exercises for this lesson either, just practice a bit printing lines and try to get used to the weird syntax.

Yesterday I gave you a headache with strange symbols, today I hope I just gained TODO again your consideration. Let's wrap it up here, there is a new film that awaits you, and some crisps. Remember to put some beers in the fridge, one for you, and one for your new friend `sed`. And maybe give some food to the `cat` as well, poor little thing.
