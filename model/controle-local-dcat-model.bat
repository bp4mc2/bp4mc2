@echo off
echo DCAT model
curl.exe -X PUT -T dcat-model.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/dcat-model
pause

