@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/dso/stage
type NUL > "Stage DSO local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	curl.exe -X POST -T %%y http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/dso/stage
	type %%y >> "../Stage DSO local.ttl"
	echo. >> "../Stage DSO local.ttl"
)
cd ..
echo Creating concatenated file O...
powershell -Command "(gc 'Stage DSO local.ttl') -replace 'localhost:8080', 'data.ontwikkeling.pdok.nl' | Out-File -encoding UTF8 'Stage DSO O.ttl'"
echo Creating concatenated file T...
powershell -Command "(gc 'Stage DSO local.ttl') -replace 'localhost:8080', 'data.test.pdok.nl' | Out-File -encoding UTF8 'Stage DSO T.ttl'"
echo Creating concatenated file A...
powershell -Command "(gc 'Stage DSO local.ttl') -replace 'localhost:8080', 'data.acceptatie.pdok.nl' | Out-File -encoding UTF8 'Stage DSO A.ttl'"
echo Whoohoo! All done!
pause
