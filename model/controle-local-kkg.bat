@echo off
echo KKG model
curl.exe -X PUT -T kkg/kkg.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/kkg
pause

