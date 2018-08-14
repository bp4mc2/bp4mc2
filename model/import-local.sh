#!/bin/bash
echo Clearing graph...
curl -X DELETE http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/imports
cd imported
shopt -s nullglob
for FILE in *.*
do
    echo "$FILE"
    curl -X POST -T "$FILE" "http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/imports"
done
echo Done
