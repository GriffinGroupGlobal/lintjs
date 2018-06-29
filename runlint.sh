#!/usr/bin/env sh

set -e

wd=`pwd`

cd /home/node

if [ -d $wd/src ]; then
   npm run lint -- $wd/src/*.js
   npm run lint -- $wd/src/**/*.js
fi

if [ -d $wd/test ]; then
   npm run lint -- $wd/test/*.js
   npm run lint -- $wd/test/**/*.js
fi