# docker-codenarc
CodeNarc analyzes Groovy code for defects, bad practices, inconsistencies, style issues and more.

# Usage

## As an application
```docker run --rm -v `pwd`:/ws -u `id -u`:`id -g` edupo/codenarc```
By default this docker image will run codenarc checks on `/ws` directory,
mount your current folder in that location to use the image as an application.

Default user is groovy, so is recomended you run the image with you own user to
avoid permission issues.

## As a container
```docker run --rm -v `pwd`:/ws -u `id -u`:`id -g` --entrypoint=/bin/bash edupo/codenarc```
Login into the container overriding the entry point. you can execute `codenarc`
inside as a regular program. 

# Reference
http://codenarc.sourceforge.net/
