@echo off
echo skos-lex
curl.exe -X PUT -T skoslex.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/skos-lex
pause

