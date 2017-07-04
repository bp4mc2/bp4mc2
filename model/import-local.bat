@echo off
echo Clearing graph...
curl.exe -X DELETE http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/imports
cd imported
for %%y in (*.*) do (
	echo %%y
	curl.exe -X POST -T %%y http://localhost:8890/sparql-graph-crud?graph-uri=http://bp4mc2.org/id/dataset/imports
)
pause
