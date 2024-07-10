#!/bin/bash

echo "Installing Azure Cosmos DB emulator certificate"

for _ in {1..10};
do  
  if curl --insecure --silent --fail --show-error https://cosmosdb.domain:8081/_explorer/emulator.pem > /usr/local/share/ca-certificates/cosmos-db-emulator.crt;
  then
    echo "Azure Cosmos DB emulator certificate downloaded..."
    break
  else
    echo "Failed to download Azure Cosmos DB emulator certificate. Retrying in 5 seconds..."
    sleep 5
  fi
done

update-ca-certificates