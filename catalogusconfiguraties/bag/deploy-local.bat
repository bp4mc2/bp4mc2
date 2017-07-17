@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/bag/stage
type NUL > "Stage BAG local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	type %%y >> "../Stage BAG local.ttl"
	echo. >> "../Stage BAG local.ttl"
)
cd ..
echo Deploying local...
curl.exe -X POST -T "Stage BAG local.ttl" http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/bag/stage
echo Creating concatenated file O...
powershell -Command "$myFile = (gc 'Stage BAG local.ttl') -replace 'http://localhost:8080', 'http://data.ontwikkeling.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200'; [System.IO.File]::WriteAllLines('Stage BAG O.ttl', $myFile)"
echo Creating concatenated file T...
powershell -Command "$myFile = (gc 'Stage BAG local.ttl') -replace 'http://localhost:8080', 'http://data.test.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200'; [System.IO.File]::WriteAllLines('Stage BAG T.ttl', $myFile)"
echo Creating concatenated file A...
powershell -Command "$myFile = (gc 'Stage BAG local.ttl') -replace 'http://localhost:8080', 'http://data.acceptatie.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200'; [System.IO.File]::WriteAllLines('Stage BAG A.ttl', $myFile)"
echo Whoohoo! All done!
pause
