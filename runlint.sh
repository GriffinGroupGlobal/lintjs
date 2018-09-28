#!/usr/bin/env sh

set -e

wd=`pwd`
eslintcfg=/home/node/.eslintrc.json
exitcode=0

if [ -d $wd/src ]; then
  if ! eslint -c $eslintcfg $wd/src/*.js ; then
    exitcode=1
  fi
  if ! eslint -c $eslintcfg $wd/src/**/*.js ; then
    exitcode=1
  fi
fi

if [ -d $wd/test ]; then
  if ! eslint -c $eslintcfg $wd/test/*.js ; then
    exitcode=1
  fi
  if ! eslint -c $eslintcfg $wd/test/**/*.js ; then
    exitcode=1
  fi
fi

exit $exitcode
