@echo off
echo inspire-metadata
curl.exe -X PUT -T inspire-metadata.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/inspire
pause

