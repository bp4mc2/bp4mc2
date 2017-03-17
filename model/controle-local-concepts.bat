@echo off
echo Concepts
curl.exe -X PUT -T bp4mc2-concepts.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/concepts
pause

