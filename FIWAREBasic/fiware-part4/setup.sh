wget https://raw.githubusercontent.com/c-3lab/cityview-platform-docker-compose/main/docker-compose.yaml
docker-compose up -d
sleep 5
curl localhost:1026/v2/entities -s -S -H 'Content-Type: application/json' -d @example-ngsi-room1.json
