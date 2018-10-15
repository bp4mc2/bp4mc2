#!/bin/bash
cd pages
curl -H "accept-language: nl" -o ../publication/topmodel.md http://localhost:8080/bp4mc2/query/topmodel.md
for f in *.ttl ; do echo ${f%page-sc.ttl}ap-sc; curl -H "accept-language: nl" -o ../publication/${f%page-sc.ttl}ap-sc.md http://localhost:8080/bp4mc2/query/${f%page-sc.ttl}ap-sc.md ; done
rm ../publication/topmodel.ttlap-sc.md
