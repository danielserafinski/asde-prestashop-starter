## TODO:
W plikach z bootspwatch jest problem (solar: linia 144-169), chodzi o wersje bootstrapa i migracje na aplha->beta
//$spacers: (
//  0: (
//    x: 0,
//    y: 0
//  ),
//  1: (
//    x: ($spacer-x * .25),
//    y: ($spacer-y * .25)
//  ),
//  2: (
//    x: ($spacer-x * .5),
//    y: ($spacer-y * .5)
//  ),
//  3: (
//    x: $spacer-x,
//    y: $spacer-y
//  ),
//  4: (
//    x: ($spacer-x * 1.5),
//    y: ($spacer-y * 1.5)
//  ),
//  5: (
//    x: ($spacer-x * 3),
//    y: ($spacer-y * 3)
//  )
//) !default;

-----------------

modules/ps_shoppingcart/modal.tpl
obsługa modali zrobić 

## MENU
https://www.bootply.com/109271#

## TEST

BUG:
npm WARN deprecated babel-preset-es2015@6.24.1: 🙌  Thanks for using Babel: we recommend using babel-preset-env now: please read babeljs.io/env to update! 

INFO:
Thanks for using Babel: we recommend using babel-preset-env now: please read babeljs.io/env to update!
Chyba rozwiązane nie jestem pewien co z tym plikiem .babelrc


## FIX/SOLVED

BUG:
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@^1.0.0 (node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.1.2: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})

SOLVED:
Te ostrzeżenie jeżeli nie używasz systemu Windows to ta biblioteka nie jest instalowana.


## KNOWLEDGE

PROBLEM:
Wyczyszczenie wczesniej niezignorowanych plików w repo

HOW:
$ git rm -r --cached .
$ git add .
$ git commit -m "Clean up ignored files"
