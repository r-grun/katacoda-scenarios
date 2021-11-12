#/bin/bash

docker run -d --name influxdb -p 8086:8086 influxdb:2.1.1
docker cp "dataset_lineProtocol.txt" influxdb:"./"
docker exec -it influxdb /bin/bash 
wait
influx setup --org dwh-org --bucket dwh-bucket --username dwh-user --password dwhPassword123 --force && export INFLUX_ORG=dwh-org && export INFLUX_BUCKET_NAME=dwh-bucket