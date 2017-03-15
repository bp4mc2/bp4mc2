@echo off
echo Requirements
curl.exe -X PUT -T requirements.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/requirements
pause

