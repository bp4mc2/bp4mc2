@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/dso/stage
type NUL > "Stage DSO local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	type %%y >> "../Stage DSO local.ttl"
	echo. >> "../Stage DSO local.ttl"
)
cd ..
echo Deploying local...
curl.exe -X POST -T "Stage DSO local.ttl" http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/dso/stage
echo Creating concatenated file O...
powershell -Command "(gc 'Stage DSO local.ttl') -replace 'http://localhost:8080', 'http://data.ontwikkeling.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200' | Out-File -encoding UTF8 'Stage DSO O.ttl'"
echo Creating concatenated file T...
powershell -Command "(gc 'Stage DSO local.ttl') -replace 'http://localhost:8080', 'http://data.test.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200' | Out-File -encoding UTF8 'Stage DSO T.ttl'"
echo Creating concatenated file A...
powershell -Command "(gc 'Stage DSO local.ttl') -replace 'http://localhost:8080', 'http://data.acceptatie.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200' | Out-File -encoding UTF8 'Stage DSO A.ttl'"
echo Whoohoo! All done!
pause
