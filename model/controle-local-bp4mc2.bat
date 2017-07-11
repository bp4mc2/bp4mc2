@echo off
echo bp4mc2
curl.exe -X PUT -T bp4mc2.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/bp4mc2
curl.exe -X PUT -T bp4mc2-datasets.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/bp4mc2
curl.exe -X PUT -T bp4mc2-datasets.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/bp4mc2-datasets
pause

