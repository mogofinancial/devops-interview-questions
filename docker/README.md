# Docker

We've provided a Dockerfile and other files that exhibit common anti-patterns
we've seen people follow. Take a look inside and spend some time understanding
what's going on.

Your task in this exercise is to refactor the `Dockerfile` and `.dockerignore`.
Pay particular attention to build speed (including the Docker build cache),
security and general Docker best practices.

Put your answers and thoughts wherever you see `Answer:` below.

## Details

Go ahead and build this image, tagging it `interview`.  Observe all of the
commands being run, and note how long the build takes.

Now build it again using the exact same command.  Note that the build is close
to instantaneous, and that all of the steps were grabbed from the magical
Docker build cache.

Now open the `hello.txt` file and change the message it contains.  Rebuild the
image and observe which layers are pulled from the local cache vs rebuilt from
scratch.  How long does the build take?

Now change _anything_ in the Dockerfile.  Seriously, just add a newline
somewhere.  Rebuild the image and observe the entire world being rebuilt.  Why?

> Answer:
>
> Explain why making insignificant changes to the Dockerfile results in a full
> rebuild.

Run the image using an interactive bash shell.  Take a
look at the files in the `/app` directory.  Do you see
any that shouldn't be there?

All of the above should give you plenty of pointers as to how to refactor this
Docker configuration.  Have fun!

Final question:

What is the role of the init process in Linux/Unix, what are its
responsibilities, and how does it apply to Docker containers?

> Answer:
>
> Answer here.

