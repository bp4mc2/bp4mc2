@echo off
echo Clearing graph...
curl.exe -X PUT -T empty.ttl http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/tax/stage
type NUL > "Stage Tax local.ttl"
cd onderdelen
for %%y in (*.ttl) do (
	echo Processing %%y...
	curl.exe -X POST -T %%y http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/tax/stage
	type %%y >> "../Stage Tax local.ttl"
	echo. >> "../Stage Tax local.ttl"
)
cd ..
echo Creating concatenated file O...
powershell -Command "(gc 'Stage Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.so.kadaster.nl' -replace [regex]::escape('/catalogus/tax(|/)$'), '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', '' | Out-File -encoding UTF8 'Stage Tax O.ttl'"
echo Creating concatenated file T...
powershell -Command "(gc 'Stage Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.in.kadaster.nl' -replace [regex]::escape('/catalogus/tax(|/)$'), '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', '' | Out-File -encoding UTF8 'Stage Tax T.ttl'"
echo Creating concatenated file A...
powershell -Command "(gc 'Stage Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.fto.kadaster.nl' -replace [regex]::escape('/catalogus/tax(|/)$'), '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', '' | Out-File -encoding UTF8 'Stage Tax A.ttl'"
echo Creating concatenated file P...
powershell -Command "(gc 'Stage Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.cs.kadaster.nl' -replace [regex]::escape('/catalogus/tax(|/)$'), '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', '' | Out-File -encoding UTF8 'Stage Tax P.ttl'"
echo Whoohoo! All done!
pause
