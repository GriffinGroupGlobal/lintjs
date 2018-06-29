# Description

This is a g3 development utility for running a linter against all js files mounted to the image. The is the
current [linter][eslint] and these are the [rules][airbnbrules] that may be implemented.

This is designed to be a general purpose utility that will also serve as a drone plugin.

# Usage

When calling via docker you must:
- mount a volume
  - this volume may have a src directory where js files can be found
  - this volume may have a test directory where js file can be found
  - these two directories are where the linter will look for js files
- specify a working dir which must be the volume you mounted

```bash
docker run --rm -v /Users/mattjenks/Development/Hydrogen/gplib_provingground:/mj --workdir /mj g3dev/lintjs:latest
```

# Docker

Find the latest docker image [here][docker].

[eslint]:https://eslint.org/
[airbnbrules]:https://github.com/airbnb/javascript
[node]:https://hub.docker.com/_/node/
[docker]:https://hub.docker.com/r/g3dev/lintjs/
