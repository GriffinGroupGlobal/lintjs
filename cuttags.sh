#!/usr/bin/env bash

if [ `git describe --abbrev=0 --tags | cut -d\- -f2` == start ] || [ `git describe --abbrev=0 --tags | cut -d\- -f2` == resume ]
then 
git describe --abbrev=0 --tags | cut -d\- -f1,2
else
git describe --abbrev=0 --tags | cut -d\- -f1
fi
