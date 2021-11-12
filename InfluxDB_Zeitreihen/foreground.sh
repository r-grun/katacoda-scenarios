#/bin/bash

docker run -d --name influxdb -p 8086:8086 influxdb:2.1.1
docker cp "dataset_lineProtocol.txt" influxdb:"./"
docker exec -it influxdb /bin/bash 