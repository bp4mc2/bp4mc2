@echo off
echo DCAT-AP-EU
curl.exe -X PUT -T dcat-ap-eu.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/dcat-ap-eu
pause

