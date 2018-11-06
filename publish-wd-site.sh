#!/bin/bash
echo Publish markdown documents
cd site
for f in *.md ; do echo ${f%.md}; cp $f ../../bp4mc2.github.io/20181107 ; done
echo Publish local biblio
cp localbiblio.js ../../bp4mc2.github.io/20181107
