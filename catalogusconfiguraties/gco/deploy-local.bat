@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/gco/stage
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/catalogus/stage
type NUL > "Stage GCO local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	curl.exe -X POST -T %%y http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/gco/stage
	curl.exe -X POST -T %%y http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/catalogus/stage
	type %%y >> "../Stage GCO local.ttl"
	echo. >> "../Stage GCO local.ttl"
)
cd ..
echo Creating concatenated file O...
powershell -Command "(gc 'Stage GCO local.ttl') -replace 'service <http://localhost:8080/catalogus/url>', 'service <http://ldt:8080/catalogus/url>' -replace 'http://localhost:8080', 'http://data.ontwikkeling.pdok.nl' | Out-File -encoding UTF8 'Stage GCO O.ttl'"
echo Creating concatenated file T...
powershell -Command "(gc 'Stage GCO local.ttl') -replace 'service <http://localhost:8080/catalogus/url>', 'service <http://ldt:8080/catalogus/url>' -replace 'http://localhost:8080', 'http://data.test.pdok.nl' | Out-File -encoding UTF8 'Stage GCO T.ttl'"
echo Creating concatenated file A...
powershell -Command "(gc 'Stage GCO local.ttl') -replace 'service <http://localhost:8080/catalogus/url>', 'service <http://ldt:8080/catalogus/url>' -replace 'http://localhost:8080', 'http://data.acceptatie.pdok.nl' | Out-File -encoding UTF8 'Stage GCO A.ttl'"
echo Whoohoo! All done!
pause
