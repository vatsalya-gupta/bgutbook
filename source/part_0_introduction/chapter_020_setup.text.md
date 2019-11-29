# Setup

## Example files

Many examples and exercises in the book use text files that are available on GitHub at TODO. To access them you just need to clone the repository.

```
git clone TODO
```

If you don't know how to use Git you can find a zipped version of the repository at TODO

## Linux users

If you are a Linux user you are basically already set up. The only thing you need to do is to download the test files and make sure that you run examples and exerices inside the cloned directory.

Extract the archive in a directory of choice and reach it from your terminal. If you are using a graphical environment like Gnome or KDE you can usually find a "Open terminal here" command in the file browser. Otherwise you can just fire up a terminal (Konsole for KDE, GNOME terminal for GNOME, or any other terminal emulator) and move to that directory with the command `cd path/of/the/directory`. We will discuss this in depth in the book, as the file system is one of the things we will learn to use, but for the time being just try to get there. Once you are there running the command `ls` should show you a list of the files. Congrats! You are ready to go!

## Mac OS users / Windows users

For several reasons, I will cover only Linux in the rest of the book, at least for the initial versions. So if you are using Mac OS X or Windows, you will have to run Linux in a Docker container. Refer to the [Docker documentation](https://docs.docker.com/install/) to install it.

Open a terminal in the folder where you cloned the example files or unzipped the archive and run Docker with the following command line

``` sh
docker run -t -i -v .:/opt/utpbook_files ubuntu /bin/bash
```

This should show you a new terminal like

``` sh
root@e9edf6b15579:/#
```

At this point run the command `cd /opt/utpbook_files` that will go to the directory where you can find the example files. Once there, if you run `ls` you should see a list of the files.

