#/bin/bash

docker run -d --name influxdb -p 8086:8086 influxdb:2.1.1
unzip /usr/local/bin/dataset_lineProtocol.zip
docker exec -it influxdb /bin/bash 