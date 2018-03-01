#!/usr/bin/env sh

npm run lint -- ./src/src/*.js &&
npm run lint -- ./src/src/**/*.js &&
npm run lint -- ./src/test/**/*.spec.js