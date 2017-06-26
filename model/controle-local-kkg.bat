@echo off
echo KKG model
curl.exe -X PUT -T kkg/KKG.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/kkg
echo KKG links
curl.exe -X POST -T kkg/KKGpathnames.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/kkg
pause

