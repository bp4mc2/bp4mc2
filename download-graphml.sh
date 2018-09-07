#!/bin/bash
cd profiles
for f in *.ttl ; do echo ${f%.ttl}; curl -o ../diagrams/${f%.ttl}.graphml http://localhost:8080/bp4mc2/query/${f%.ttl}?format=yed ; done
