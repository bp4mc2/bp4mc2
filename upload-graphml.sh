#!/bin/bash
cd diagrams
for f in *.graphml ; do echo ${f%.graphml}; curl -X PUT -T $f http://localhost:8080/bp4mc2/container/${f%.graphml}-yed ; done
