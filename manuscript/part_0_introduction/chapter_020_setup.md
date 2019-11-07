# Setup

## Linux users

If you are a Linux user you are basically already set up. The only thing you need to do is to download the test files that I will use in the book from

blabla TODO

Extract the archive in a directory of choice and reach it from your terminal. If you are using a graphical environment like Gnome or KDE you can usually find a "Open terminal here" command in the file browser. Otherwise you can just fire up a terminal (Konsole for KDE, GNOME terminal for GNOME, or any other terminal emulator) and move to that directory with the command `cd path/of/the/directory`. We will discuss this in depth in the book, as the file system is one of the things we will learn to use, but for the time being just try to get there. Once you are there running the command `ls` should show you a list of the files listed here

blablabla TODO

Congrats! You are ready to go!

## Mac OS users / Windows users

For several reasons, I will cover only Linux in the rest of the book, at least for the initial versions. So if you are using Mac OS X or Windows, you will have to run Linux in a Docker container. Refer to the [Docker documentation](https://docs.docker.com/install/) to install it.

Download the test files that I will use in the book from

blabla TODO

Extract the archive in a directory of choice and then run Docker with the following command line

``` sh
docker run -t -i -v path/of/the/directory:/opt/TODO ubuntu /bin/bash
```

So, if you extracted the test files in `/Users/yourname/TODO` the command line would be

``` sh
docker run -t -i -v /users/yourname/TODO:/opt/TODO ubuntu /bin/bash
```

This should show you a new terminal like

``` sh
root@e9edf6b15579:/#
```

At this point run the command `cd /opt/TODO` that will go to the directory where you can find the example files. Once there, if you run `ls` you should see a list of the same files that you can find here TODO.

