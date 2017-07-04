@echo off
echo Creating concatenated file T...
powershell -Command "$myFile = (gc 'datasets.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.in.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('Datasets Tax T.ttl', $myFile)"
echo Whoohoo! All done!
pause