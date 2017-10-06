@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/dsov2/stage
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/catalogus/dsov2/stage
type NUL > "Stage DSOv2 local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	type %%y >> "../Stage DSOv2 local.ttl"
	echo. >> "../Stage DSOv2 local.ttl"
)
cd ..
echo Deploying local...
curl.exe -X POST -T "Stage DSOv2 local.ttl" http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/dsov2/stage
curl.exe -X POST -T "Stage DSOv2 local.ttl" http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/catalogus/dsov2/stage
echo Creating concatenated file O...
powershell -Command "$myFile = (gc 'Stage DSOv2 local.ttl') -replace 'http://localhost:8080', 'http://data.ontwikkeling.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200'; [System.IO.File]::WriteAllLines('Stage DSOv2 O.ttl', $myFile)"
echo Creating concatenated file T...
powershell -Command "$myFile = (gc 'Stage DSOv2 local.ttl') -replace 'http://localhost:8080', 'http://data.test.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200'; [System.IO.File]::WriteAllLines('Stage DSOv2 T.ttl', $myFile)"
echo Creating concatenated file A...
powershell -Command "$myFile = (gc 'Stage DSOv2 local.ttl') -replace 'http://localhost:8080', 'http://data.acceptatie.pdok.nl' -replace 'http://localhost:7200', 'http://graphdb:7200'; [System.IO.File]::WriteAllLines('Stage DSOv2 A.ttl', $myFile)"
echo Whoohoo! All done!
pause
