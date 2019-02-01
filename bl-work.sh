#!/usr/bin/env bash
cd packages;
    git clone --single-branch --branch feature/sf-bl https://github.com/stephenwf/iiif-av-component.git
    git clone --single-branch --branch feature/optional-type https://github.com/stephenwf/manifesto.git
    git clone --single-branch --branch feature/sf-bl https://github.com/stephenwf/universalviewer.git --recursive
cd -;

cd packages/universalviewer;
    rm package-lock.json
    npm install
cd -;

yarn && yarn exec lerna bootstrap

yarn build
