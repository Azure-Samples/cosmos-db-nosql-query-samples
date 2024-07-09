echo "Installing emulator certificate"

curl --insecure https://cosmosdb.domain:8081/_explorer/emulator.pem > ~/emulatorcert.crt

cp ~/emulatorcert.crt /usr/local/share/ca-certificates/

update-ca-certificates