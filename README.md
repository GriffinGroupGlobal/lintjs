# Description

This is a g3 development utility for running a linter against all js files mounted to the image. The is the
current [linter][eslint] and these are the [rules][airbnbrules] that may be implemented.

This is currently built off of the node [alpine image][node].

# Usage

The image expects a directory to be mounted at the /home/node/src location. It will search the mounted directory
for *.js under a src and a test directory and lint them against the rule set. For instance, to use 
the latest linter and rule set against the current working directory (and its children)...

```bash
docker container run -v `pwd`:/home/node/src g3dev/lintjs:latest
```

# Docker

Find the latest docker image [here][docker].

[eslint]:https://eslint.org/
[airbnbrules]:https://github.com/airbnb/javascript
[node]:https://hub.docker.com/_/node/
[docker]:https://hub.docker.com/r/g3dev/lintjs/
