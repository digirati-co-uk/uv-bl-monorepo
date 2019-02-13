#!/usr/bin/env bash
rm -rf yarn.lock

cd packages;
    rm -rf ./iiif-av-component
    rm -rf ./manifesto
    rm -rf ./universalviewer
    git clone --single-branch --branch feature/sf-bl https://github.com/stephenwf/iiif-av-component.git
    rm -rf !$/.git
    git clone --single-branch --branch feature/optional-type https://github.com/stephenwf/manifesto.git
    rm -rf !$/.git
    git clone --single-branch --branch --recursive feature/sf-bl https://github.com/stephenwf/universalviewer.git
    rm -rf !$/.git
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

cd packages/universalviewer;
    yarn exec grunt build
cd -;
