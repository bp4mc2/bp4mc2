@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/stage
type NUL > "Stage TR local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	type %%y >> "../Stage TR local.ttl"
	echo. >> "../Stage TR local.ttl"
)
cd ..
echo Deploying local...
curl.exe -X POST -T "Stage TR local.ttl" http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/stage
echo Creating concatenated file O...
powershell -Command "(gc 'Stage TR local.ttl') -replace 'http://localhost:8080', 'http://data.ontwikkeling.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200' | Out-File -encoding UTF8 'Stage TR O.ttl'"
echo Creating concatenated file T...
powershell -Command "(gc 'Stage TR local.ttl') -replace 'http://localhost:8080', 'http://data.test.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200' | Out-File -encoding UTF8 'Stage TR T.ttl'"
echo Creating concatenated file A...
powershell -Command "(gc 'Stage TR local.ttl') -replace 'http://localhost:8080', 'http://data.acceptatie.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200' | Out-File -encoding UTF8 'Stage TR A.ttl'"
echo Whoohoo! All done!
pause
