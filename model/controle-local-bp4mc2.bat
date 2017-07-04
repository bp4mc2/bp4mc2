@echo off
echo bp4mc2
curl.exe -X PUT -T bp4mc2v2.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/bp4mc2
pause

