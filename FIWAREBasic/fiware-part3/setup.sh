pip2 install Flask==1.0.2
pip2 install pyOpenSSL==19.0.0
pip2 install paho-mqtt
wget https://raw.githubusercontent.com/telefonicaid/fiware-orion/master/scripts/accumulator-server.py
chmod a+x accumulator-server.py
wget https://github.com/telefonicaid/fiware-orion/raw/master/docker/docker-compose.yml
docker-compose up -d
curl localhost:1026/v2/entities -s -S -H 'Content-Type: application/json' -d @example-ngsi-room1.json
rm docker-compose.yml
