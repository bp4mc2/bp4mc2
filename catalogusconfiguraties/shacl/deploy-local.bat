@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/shacl/stage
type NUL > "Stage Shacl local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	curl.exe -X POST -T %%y http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/shacl/stage
	type %%y >> "../Stage Shacl local.ttl"
	echo. >> "../Stage Shacl local.ttl"
)
cd ..
echo Creating concatenated file O...
powershell -Command "(gc 'Stage Shacl local.ttl') -replace 'http://localhost:8080', 'http://data.ontwikkeling.pdok.nl' | Out-File -encoding UTF8 'Stage Shacl O.ttl'"
echo Creating concatenated file T...
powershell -Command "(gc 'Stage Shacl local.ttl') -replace 'http://localhost:8080', 'http://data.test.pdok.nl' | Out-File -encoding UTF8 'Stage Shacl T.ttl'"
echo Creating concatenated file A...
powershell -Command "(gc 'Stage Shacl local.ttl') -replace 'http://localhost:8080', 'http://data.acceptatie.pdok.nl' | Out-File -encoding UTF8 'Stage Shacl A.ttl'"
echo Whoohoo! All done!
pause
