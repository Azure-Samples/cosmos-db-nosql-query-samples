echo "Installing emulator certificate"

curl --insecure https://cosmos.domain:8081/_explorer/emulator.pem > ~/emulatorcert.crt

cp ~/emulatorcert.crt /usr/local/share/ca-certificates/

update-ca-certificates