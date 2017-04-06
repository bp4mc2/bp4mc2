@echo off
echo DCAT-NL profiel
curl.exe -X PUT -T dcat-nl-profiel.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/dcat-nl-profiel
pause

