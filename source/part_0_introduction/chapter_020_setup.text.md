# Setup

{blurb, icon: quote-right}
-- _This is after the preface but before chapter one_
An American Werewolf in London (1981)
{/blurb}

## Example files

Many examples and exercises in the book use text files that are available on the GitHub page of the book. To access them you just need to clone the repository.

``` sh
$ git clone https://github.com/bgutbook/bgutbook_files.git
```

If you don't know how to use Git you can find many resources online, or you can download a zipped version of the repository on the main page of the repository.

## Linux users

If you are a Linux user you are basically already set up. The only thing you need to do is to download the test files and make sure that you run examples and exercises inside the cloned directory.

Extract the archive in a directory of choice and reach it from your terminal. If you are using a graphical environment like Gnome or KDE you can usually find a "Open terminal here" command in the file browser. Otherwise you can just fire up a terminal (Konsole for KDE, GNOME terminal for GNOME, or any other terminal emulator) and move to that directory with the following command

``` sh
$ cd path/of/the/directory
```

Where `path/of/the/directory` is the full path of the repository that you cloned in the previous section. Congratulations, you are ready to go!

## Mac OS users / Windows users

I will cover only Linux in this book, at least in the initial versions.

Linux is the operating system used in the vast majority of cloud solutions, and is the de facto most widespread Unix on servers, and this is a good reason to cover it. 

I'm using Linux on my personal computers as well, but the majority of programmers use a Mac or a Windows machine. The main reason for not covering Mac OS is that its default terminal is not 100% compatible with the Linux counterparts (as Mac doesn't use the GNU utilities). I don't have a Mac and even if I could cover all the different versions of the utilities, I think this would be daunting for beginners. The main reason for not covering Windows is that it is not even a Unix. I know that recent versions include some sort of Linux layer, but again I don't have time and interest in those systems.

So if you are using Mac OS X or Windows, you will have to run Linux in a Docker container. I will provide here two different solutions, the first one is simple but will be missing some parts of the system, while the second is a bit more complex but complete. Please note that in either case you need to have Docker installed in your system, refer to the [Docker documentation](https://docs.docker.com/install/) for instructions on how to do it.

You can come back at any time and run the more complex solution if you initially decided to go for the simple one and you want to try the more complete version.

### Simple solution

You can run the default Ubuntu image in Docker. This image has been stripped to be smaller, so you will miss some of the documentation that comes with a Linux system, called "man pages". We will use them in the first lesson and I encourage the reader to use them to learn how to use commands, so if you go for this solution you will have to refer to the online man pages every time you need help on a command. I will mention the online resources in the relevant chapter of the book, so don't worry now.

To run the Ubuntu image first clone the repository with the example files, enter that directory and run Docker. The commands are

``` sh
$ git clone https://github.com/bgutbook/bgutbook_files.git
$ cd bgutbook_files
$ docker run -t -i -v $(pwd):/opt/bgutbook_files ubuntu /bin/bash
root@1d888c92ee76:/# 
```

As you can see the prompt changes, which tells you that you are inside the Linux container. Please note that the number that follows the `@` sign in the prompt is the ID of the running Docker container, so it will be different for you. At that point move to the directory that contains the example files inside the container

``` sh
root@1d888c92ee76:/# cd /opt/bgutbook_files/
root@1d888c92ee76:/opt/bgutbook_files#
```

From here you are ready to start reading the book and run the examples. Whenever you want to exit you just need to type `exit` and Enter. When you want to go on you just need to follow again the process, skipping the `git clone` part. That is

``` sh
$ cd bgutbook_files
$ docker run -t -i -v $(pwd):/opt/bgutbook_files ubuntu /bin/bash
root@1d888c92ee76:/# cd /opt/bgutbook_files/
root@1d888c92ee76:/opt/bgutbook_files#
```

### Advanced solution

If you want to have a Ubuntu container with the man pages you need to create a new Docker image. I provide a configuration for such a machine as a `Dockerfile` in the `bgutbook_ubuntu` repository.

First of all clone the repository

``` sh
$ git clone https://github.com/bgutbook/bgutbook_ubuntu.git
```

Then enter the directory and build the Docker image

``` sh
$ cd bgutbook_ubuntu
$ docker build -t bgutbook_ubuntu .
```

Now Docker will create an image called `bgutbook_ubuntu` and store it in your system. At this point you are ready to run it whenever you want to follow along the examples of the book.

Exit the directory with the `Dockerfile`, clone the repository with the example files, enter that directory and run Docker. The commands are

``` sh
$ cd ..
$ git clone https://github.com/bgutbook/bgutbook_files.git
$ cd bgutbook_files
$ docker run -t -i -v $(pwd):/opt/bgutbook_files bgutbook_ubuntu /bin/bash
root@1d888c92ee76:/# 
```

As you can see the prompt changes, which tells you that you are inside the Linux container. Please note that the number that follows the `@` sign in the prompt is the ID of the running Docker container, so it will be different for you. At that point move to the directory that contains the example files inside the container

``` sh
root@1d888c92ee76:/# cd /opt/bgutbook_files/
root@1d888c92ee76:/opt/bgutbook_files#
```

From here you are ready to start reading the book and run the examples. Whenever you want to exit you just need to type `exit` and Enter. When you want to go on you just need to follow again the process, skipping the `git clone` part. That is

``` sh
$ cd bgutbook_files
$ docker run -t -i -v $(pwd):/opt/bgutbook_files bgutbook_ubuntu /bin/bash
root@1d888c92ee76:/# cd /opt/bgutbook_files/
root@1d888c92ee76:/opt/bgutbook_files#
```
