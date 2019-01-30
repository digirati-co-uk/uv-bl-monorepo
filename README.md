# UV Monorepo

Go into packages and clone the following repositories:
- Any fork of the universal viewer (--recursive)
- `git@github.com:IIIF-Commons/iiif-av-component.git`
- `git@github.com:IIIF-Commons/iiif-gallery-component.git`
- `git@github.com:IIIF-Commons/iiif-tree-component.git`
- `git@github.com:IIIF-Commons/iiif-metadata-component.git`
- `git@github.com:IIIF-Commons/manifesto.git`
- `git@github.com:IIIF-Commons/manifold.git`

To build UV examples:

In one terminal:
```
cd packages/universal-viewer
yarn grunt examples
```

Spins up: http://localhost:8002 with UV examples.

In another, each time you make a change:
```
yarn build
```
