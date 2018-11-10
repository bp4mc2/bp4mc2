#!/bin/bash
echo Publish markdown documents
cd publication
for f in *.md ; do echo ${f%.md}; cp $f ../../bp4mc2.github.io/profiles ; done
echo Publish english markdown documents
cd en
for f in *.md ; do echo ${f%.md}; cp $f ../../../bp4mc2.github.io/profiles/en ; done
cd ../..
echo Publish diagrams
cd diagrams
for f in *.png ; do echo ${f%.md}; cp $f ../../bp4mc2.github.io/profiles ; done
echo Publish diagrams to english site
for f in *.png ; do echo ${f%.md}; cp $f ../../bp4mc2.github.io/profiles/en ; done
cd ..
