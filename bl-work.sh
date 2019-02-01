#!/usr/bin/env bash
rm -rf yarn.lock

cd packages;
    git clone --single-branch --branch feature/sf-bl https://github.com/stephenwf/iiif-av-component.git
    git clone --single-branch --branch feature/optional-type https://github.com/stephenwf/manifesto.git
    git clone --single-branch --branch feature/sf-bl https://github.com/stephenwf/universalviewer.git --recursive
cd -;

yarn

cd packages/manifesto;
    rm package-lock.json
    npm install
cd -;

cd packages/universalviewer;
    rm package-lock.json
    npm install
cd -;

yarn exec lerna link

yarn build
