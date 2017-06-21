@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/tax/stage
type NUL > "Stage Tax local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	type %%y >> "../Stage Tax local.ttl"
	echo. >> "../Stage Tax local.ttl"
)
cd ..
curl.exe -X POST -T "Stage Tax local.ttl" http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/tax/stage
echo Creating concatenated file O...
powershell -Command "$myFile = (gc 'Stage Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.so.kadaster.nl' -replace [regex]::escape('/catalogus/tax(|/)$'), '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('Stage Tax O.ttl', $myFile)"
echo Creating concatenated file T...
powershell -Command "$myFile = (gc 'Stage Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.in.kadaster.nl' -replace [regex]::escape('/catalogus/tax(|/)$'), '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('Stage Tax T.ttl', $myFile)"
echo Creating concatenated file A...
powershell -Command "$myFile = (gc 'Stage Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.fto.kadaster.nl' -replace [regex]::escape('/catalogus/tax(|/)$'), '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('Stage Tax A.ttl', $myFile)"
echo Creating concatenated file P...
powershell -Command "$myFile = (gc 'Stage Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.cs.kadaster.nl' -replace [regex]::escape('/catalogus/tax(|/)$'), '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('Stage Tax P.ttl', $myFile)"
echo Whoohoo! All done!
pause



