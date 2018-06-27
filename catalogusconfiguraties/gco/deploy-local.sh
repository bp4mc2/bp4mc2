cd onderdelen
zip ../config.zip *.ttl
cd ..
curl -X PUT -H "Content-Type: multipart/x-zip" -T config.zip http://localhost:8080/catalogus/gco/backstage/import
