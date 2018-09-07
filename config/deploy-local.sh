rm -f ldt-config.zip
cd ldt-1
zip ../ldt-config.zip *.ttl
cd ..
curl -X PUT -H "Content-Type: multipart/x-zip" -T ldt-config.zip http://localhost:8080/bp4mc2/backstage/import
rm ldt-config.zip
