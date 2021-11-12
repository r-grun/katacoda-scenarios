#/bin/bash

influx auth list --user dwh-user > tokens.txt
#export TOKEN_ID=[grep für token id]
export INFLUX_TOKEN=$(grep -G -o -e [a-zA-Z0-9]*== tokens.txt | head -n 1)
influx auth create -o dwh-org -u dwh-user -all-access > all_access_token.txt
export INFLUX_TOKEN=$(grep -G -o -e [a-zA-Z0-9]*== all_access_token.txt | head -n 2)