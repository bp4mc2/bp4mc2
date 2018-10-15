#!/bin/bash
cd profiles
for f in *.ttl ; do echo ${f%.ttl}; curl -H "accept-language: nl" -o ../diagrams/${f%.ttl}.graphml http://localhost:8080/bp4mc2/query/${f%.ttl}-yed?format=yed ; done
