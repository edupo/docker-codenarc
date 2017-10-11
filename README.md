# docker-codenarc
CodeNarc analyzes Groovy code for defects, bad practices, inconsistencies, style
issues and more.

# Usage

## As an application
```docker run --rm -v `pwd`:/ws -u `id -u`:`id -g` edupo/codenarc```

By default this docker image will run codenarc checks on `/ws` directory,
mount your current folder in that location to use the image as an application.

Default user is groovy, so is recomended you run the image with you own user to
avoid permission issues.

## As a container
```docker run --rm -v `pwd`:/ws -u `id -u`:`id -g` --entrypoint=/bin/bash -i -t edupo/codenarc```

Login into the container overriding the entry point. you can execute `codenarc`
inside as a regular program. 

## Specifiying ruleset
As described in the [documentation](http://codenarc.sourceforge.net/codenarc-command-line.html)
you can specify your own ruleset file relative to your workspace in the command
using `-rulesetfile` flag.

```docker run --rm -v `pwd`:/ws -u `id -u`:`id -g` edupo/codenarc -rulesetfiles=file:all.groovy```

# Reference
http://codenarc.sourceforge.net/
