@echo off
echo Creating concatenated file T...
powershell -Command "$myFile = (gc 'UploadDataset local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.in.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('UploadDataset.ttl', $myFile)"
echo Creating concatenated file T...
powershell -Command "$myFile = (gc 'UploadStatus local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.in.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('UploadStatus.ttl', $myFile)"

echo Whoohoo! All done!
pause