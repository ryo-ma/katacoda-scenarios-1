pip2 install Flask==1.0.2
pip2 install pyOpenSSL==19.0.0
wget https://raw.githubusercontent.com/telefonicaid/fiware-orion/master/scripts/accumulator-server.py
chmod a+x accumulator-server.py
wget https://github.com/telefonicaid/fiware-orion/raw/master/docker/docker-compose.yml
docker-compose up -d
rm docker-compose.yml
