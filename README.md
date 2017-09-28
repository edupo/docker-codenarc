# docker-codenarc
CodeNarc analyzes Groovy code for defects, bad practices, inconsistencies, style issues and more.

# Usage
```docker run --rm -v `pwd`:/ws -u `id -u`:`id -g` edupo/codenarc```
This command will execute CodeNarc on your current directory with all default setting (just _basic ruleset_)

# Reference
http://codenarc.sourceforge.net/
