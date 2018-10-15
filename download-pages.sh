#!/bin/bash
cd pages
for f in *.ttl ; do echo ${f%.ttl}; curl -o ../publication/${f%.ttl}.md http://localhost:8080/bp4mc2/query/${f%.ttl}.md ; done
