#!/bin/bash
echo Publish markdown documents
cd publication
for f in *.md ; do echo ${f%.md}; cp $f ../../bp4mc2.github.io/model ; done
echo Publish english markdown documents
cd en
for f in *.md ; do echo ${f%.md}; cp $f ../../../bp4mc2.github.io/model/en ; done
cd ../..
echo Publish diagrams
cd diagrams
for f in *.png ; do echo ${f%.md}; cp $f ../../bp4mc2.github.io/model ; done
echo Publish diagrams to english site
for f in *.png ; do echo ${f%.md}; cp $f ../../bp4mc2.github.io/model/en ; done
cd ..
