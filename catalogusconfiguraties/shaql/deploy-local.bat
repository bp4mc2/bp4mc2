@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/shaql/stage
type NUL > "Stage Shaql local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	curl.exe -X POST -T %%y http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/shaql/stage
	type %%y >> "../Stage Shaql local.ttl"
	echo. >> "../Stage Shaql local.ttl"
)
cd ..
echo Creating concatenated file O...
powershell -Command "(gc 'Stage Shaql local.ttl') -replace 'localhost:8080', 'data.ontwikkeling.pdok.nl' | Out-File -encoding UTF8 'Stage Shaql O.ttl'"
echo Creating concatenated file T...
powershell -Command "(gc 'Stage Shaql local.ttl') -replace 'localhost:8080', 'data.test.pdok.nl' | Out-File -encoding UTF8 'Stage Shaql T.ttl'"
echo Creating concatenated file A...
powershell -Command "(gc 'Stage Shaql local.ttl') -replace 'localhost:8080', 'data.acceptatie.pdok.nl' | Out-File -encoding UTF8 'Stage Shaql A.ttl'"
echo Whoohoo! All done!
pause
