#!/bin/sh

rm -rf delivery

mkdir delivery
mkdir delivery/scripts
mkdir delivery/css
mkdir delivery/images

cp -rf fonts delivery

cp test/lodash.min.js delivery/scripts
cp test/raphael-min.js delivery/scripts
cp test/underscore-min.js delivery/scripts
cp grammar.js delivery/scripts
cp src/diagram.js delivery/scripts
cp src/jquery-plugin.js delivery/scripts
cp src/sequence-diagram.js delivery/scripts
cp sequence-diagram-min.js delivery/scripts

cp test/template.html delivery


curl html5shiv.googlecode.com/svn/trunk/html5.js --O delivery/scripts/html5.js

curl bramp.github.com/js-sequence-diagrams/css/style.css --O delivery/css/style.css
curl bramp.github.com/js-sequence-diagrams/images/body-bg.jpg --O delivery/images/body-bg.jpg
curl bramp.github.com/js-sequence-diagrams/images/header-bg.jpg --O delivery/images/header-bg.jpg
curl bramp.github.com/js-sequence-diagrams/images/sidebar-bg.jpg --O delivery/images/sidebar-bg.jpg

curl http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js --O delivery/scripts/jquery.min.js
curl http://d1n0x3qji82z53.cloudfront.net/src-min-noconflict/ace.js --O delivery/scripts/ace.js
cp test/mode-asciidoc.js delivery/scripts
cp test/theme-crimson_editor.js delivery/scripts

curl http://svgfix.googlecode.com/files/svgfix-0.2.js --O delivery/scripts/svgfix-0.2.js